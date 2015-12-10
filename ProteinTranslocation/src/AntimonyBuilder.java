import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class AntimonyBuilder
{
    private static final String RESOURCES_DIR = "resources/";
    private static final String REACTIONS_FILE = RESOURCES_DIR + "reactions.csv";
    private static final String SPECIES_FILE = RESOURCES_DIR + "species.csv";

    private static final String FILE_PATH_ARG = "--filePath=";
    private static final String MODEL_NAME_ARG = "--modelName=";
    private static final String SUBSET_PATH_ARG = "--subset=";

    public static void main(String[] args)
    {
        try
        {
            String modelName = "";
            String resultPath = "../ProteinTranslocation.txt";
            String pathToSubset = "";
            if( args.length == 0 )
                printHelpMessage();
            for( String arg : args )
            {
                if( arg.startsWith( FILE_PATH_ARG ) )
                    resultPath = arg.substring( FILE_PATH_ARG.length() );
                else if( arg.startsWith( MODEL_NAME_ARG ) )
                    modelName = arg.substring( MODEL_NAME_ARG.length() );
                else if( arg.startsWith( SUBSET_PATH_ARG ) )
                    pathToSubset = arg.substring( SUBSET_PATH_ARG.length() );
                else if( arg.startsWith( "--" ) && arg.contains( "=" ) )
                {
                    System.out.println( "WARNING: '" + arg.substring( 2, arg.indexOf( '=' ) ) + "' is invalid command." );
                    printHelpMessage();
                }
                else
                    System.out.println( "WARNING: unknown argument '" + arg + "' will be ignored." );
            }

            File file = new File( resultPath );
            if( file.getParentFile() != null )
                file.getParentFile().mkdirs();
            if( modelName.isEmpty() )
            {
                modelName = "ProteinTranslocation";
                if( !pathToSubset.isEmpty() )
                    modelName += "_subset";
            }

            build( file, modelName, pathToSubset );
        }
        catch( Throwable t )
        {
            System.out.println( t.getMessage() );
            t.printStackTrace();
        }
    }

    private static void printHelpMessage()
    {
        System.out.println();
        System.out.println( "Usage:" );
        System.out.println( "\t" + FILE_PATH_ARG + "<pathToResultFile>     Defines path to the output antimony file with results." );
        System.out.println( "\t" + MODEL_NAME_ARG + "<modelName>           Defines antimony model name." );
        System.out.println( "\t" + SUBSET_PATH_ARG
                        + "<pathToFileWithSubset>   Defines path to the file with subset of species (if you want to generate only part of the model)." );
        System.out.println();
    }

    /**
     * method to create antimony file
     * @throws IOException
     */
    public static void build(File file, String modelName, String namesFilePath) throws IOException
    {
        System.out.println( "Antimony building starts" );

        readNames( namesFilePath );
        List<Species> speciesList = readSpecies();
        List<Reaction> reactionList = readReactions();

        StringBuilder compSB = new StringBuilder( "compartment " );
        StringBuilder speciesSB = new StringBuilder( "species " );
        StringBuilder reactionSB = new StringBuilder();
        StringBuilder constSB = new StringBuilder( "const " );
        StringBuilder initializationSB = new StringBuilder();
        StringBuilder titleSB = new StringBuilder();

        Set<String> compartments = new HashSet<>();
        Set<String> speciesSet = new HashSet<>(); // this set is needed to validate enzymes names
        for( Species species : speciesList )
        {
            compartments.add( species.compartment );

            speciesSet.add( species.id );
            speciesSB.append( species.id ).append( " in " ).append( species.compartment ).append( ", " );
            titleSB.append( species.id ).append( " is \"" ).append( species.name ).append( "\";\n" );
            if( species.copyNum != 0.0 )
                initializationSB.append( species.id ).append( " = " ).append( species.copyNum ).append( ";\n" );
        }
        int length = speciesSB.length();
        speciesSB.replace( length - 2, length, ";" );

        for( String compartment : compartments )
        {
            compSB.append( compartment ).append( ", " );
            initializationSB.append( compartment ).append( " = 1;\n" );
            constSB.append( compartment ).append( ", " );
        }
        length = compSB.length();
        compSB.replace( length - 2, length, ";" );

        Set<String> reactParams = new HashSet<>();
        for( Reaction reaction : reactionList )
        {
            constSB.append( reaction.rateParam ).append( ", " );
            initializationSB.append( reaction.rateParam ).append( " = " ).append( reaction.paramValue ).append( ";\n" );
            titleSB.append( reaction.id ).append( " is \"" ).append( reaction.name ).append( "\";\n" );

            reactionSB.append( reaction.id ).append( ": " );

            int i = 0;
            String monomer = "0";
            String atp = "0";
            for( Map.Entry<String, Integer> entry : reaction.reactStroich.entrySet() )
            {
                if( entry.getValue() != 1 )
                    reactionSB.append( entry.getValue() );
                reactionSB.append( entry.getKey() ).append( " + " );
                if( i == 0 )
                    monomer = entry.getKey();
                else if( i == 1 )
                    atp = entry.getKey();
                i++;
            }
            length = reactionSB.length();
            reactionSB.replace( length - 2, length, "=> " );
            for( Map.Entry<String, Integer> entry : reaction.prodStoich.entrySet() )
            {
                if( entry.getValue() != 1 )
                    reactionSB.append( entry.getValue() );
                reactionSB.append( entry.getKey() ).append( " + " );
            }
            length = reactionSB.length();
            reactionSB.replace( length - 2, length, "; " );

            reactionSB.append( "TranslocationRate(" ).append( reaction.rateParam ).append( ", " );
            StringBuilder enz = new StringBuilder();
            for( String enzyme : reaction.enzymes )
            {
                boolean found = false;
                for( String sp : speciesSet )
                {
                    if( sp.startsWith( enzyme ) )
                    {
                        enzyme = sp;
                        found = true;
                        break;
                    }
                }
                if( !found )
                    System.out.println( "WARNING: cannot find enzyme: " + enzyme );
                reactionSB.append( enzyme ).append( ", " );
                enz.append( enzyme ).append( " -( " ).append( reaction.id ).append( ";\n" );
            }
            String Km1 = "Km1_" + monomer.substring( 0, monomer.indexOf( "__" ) );
            String Km2 = "Km2_" + atp.substring( 0, atp.indexOf( "__" ) );
            reactParams.add( Km1 );
            reactParams.add( Km2 );
            reactionSB.append( monomer ).append( ", " ).append( atp ).append( ", " ).append( Km1 ).append( ", " ).append( Km2 )
                    .append( ");\n" );
            reactionSB.append( enz );
        }

        for( String param : reactParams )
        {
            constSB.append( param ).append( ", " );
            initializationSB.append( param ).append( " = 1;\n" );
        }

        length = constSB.length();
        constSB.replace( length - 2, length, ";" );
        try (PrintWriter pw = new PrintWriter( file ))
        {
            System.out.println( "Writing to the file: '" + file.getPath() + "'." );
            System.out.println( "Antimony model name: '" + modelName + "'." );
            if( !namesFilePath.isEmpty() )
                System.out.println( "Allowed species names were taken from '" + namesFilePath + "'." );

            pw.println( "function TranslocationRate(k_cat, en1, en2, monomer, atp, Km1, Km2)" );
            pw.println( "    k_cat*en1*en2*monomer*atp/( (1+monomer/Km1)*(1+atp/Km2) );" );
            pw.println( "end" );
            pw.println();
            pw.print( "model " );
            pw.print( modelName );
            pw.println( "()" );

            pw.println( compSB );
            pw.println( speciesSB );
            pw.println();
            pw.println( constSB );
            pw.println();
            pw.println( reactionSB );
            pw.println();
            pw.println( initializationSB );
            pw.println();
            pw.println( titleSB );

            pw.println( "end" );
        }
        System.out.println( "Done" );
    }

    private static final Set<String> names = new HashSet<>();
    private static void readNames(String namesFilePath) throws IOException
    {
        if( namesFilePath.isEmpty() )
            return;
        try (BufferedReader br = new BufferedReader( new FileReader( namesFilePath ) ))
        {
            String line;
            while( ( line = br.readLine() ) != null )
            {
                String[] speciesNames = line.split( "[,]" );
                for( String species : speciesNames )
                {
                    int i = species.lastIndexOf( "__" );
                    names.add( i == -1 ? species.trim() : species.substring( 0, i ).trim() );
                }
            }

            names.add( "ATP" );
            names.add( "ADP" );
            names.add( "MG_055_170_277_464_476_20MER" );
            names.add( "MG_072_DIMER" );
            names.add( "H2O" );
            names.add( "PI" );
            names.add( "H" );
        }
        catch( FileNotFoundException e )
        {
            System.out.println( "ERROR: could not find file with allowable species names '" + namesFilePath + "'." );
        }
    }

    private static List<Species> readSpecies() throws IOException
    {
        //ID;Name;Compartment;Copy number, typical;Type
        List<Species> result = new ArrayList<>();
        try (BufferedReader br = new BufferedReader( new FileReader( SPECIES_FILE ) ))
        {
            String line;
            line = br.readLine();
            if( line == null )
            {
                System.out.println( "ERROR: Species file " + SPECIES_FILE + " is empty" );
                return result;
            }
            int idIndex = -1;
            int nameIndex = -1;
            int compIndex = -1;
            int copyNumIndex = -1;
            int typeIndex = -1;
            String[] parts = line.split( ";" );
            for( int i = 0; i < parts.length; i++ )
            {
                switch( parts[i].trim() )
                {
                    case Species.ID:
                        idIndex = i;
                        break;
                    case Species.NAME:
                        nameIndex = i;
                        break;
                    case Species.COMPARTMENT:
                        compIndex = i;
                        break;
                    case Species.COPY_NUMBER:
                        copyNumIndex = i;
                        break;
                    case Species.TYPE:
                        typeIndex = i;
                        break;
                    default:
                        continue;
                }
            }
            if( idIndex == -1 || nameIndex == -1 || compIndex == -1 || copyNumIndex == -1 || typeIndex == -1 )
            {
                System.out.println( "ERROR: One of the column was missed, check table for \"" + Species.ID + "\", \"" + Species.NAME
                        + "\", \"" + Species.COMPARTMENT + "\", \"" + Species.COPY_NUMBER + "\", \"" + Species.TYPE + "\"" );
                return result;
            }
            while( ( line = br.readLine() ) != null )
            {
                parts = line.split( ";" );
                String id = parts[idIndex];
                if( !names.isEmpty() && !names.contains( id ) )
                    continue;
                result.add( new Species( id, parts[nameIndex], parts[compIndex], parts[copyNumIndex], parts[typeIndex] ) );
            }
        }
        return result;
    }

    /**
     * Rate law is ignored for now, it is generated in the {@link build}
     */
    private static List<Reaction> readReactions() throws IOException
    {
        //ID,Name,Stoichiometry,Enzyme,Rate law,Rate parameters,Type
        List<Reaction> result = new ArrayList<>();
        try (BufferedReader br = new BufferedReader( new FileReader( REACTIONS_FILE ) ))
        {
            String line;
            line = br.readLine();
            if( line == null )
            {
                System.out.println( "WARNING: Reactions file " + REACTIONS_FILE + " is empty!" );
                return result;
            }
            int idIndex = -1;
            int nameIndex = -1;
            int stoichIndex = -1;
            int enzymesIndex = -1;
            int paramIndex = -1;
            String[] parts = line.split( ";" );
            for( int i = 0; i < parts.length; i++ )
            {
                switch( parts[i].trim() )
                {
                    case Reaction.ID:
                        idIndex = i;
                        break;
                    case Reaction.NAME:
                        nameIndex = i;
                        break;
                    case Reaction.STOICHIOMETRY:
                        stoichIndex = i;
                        break;
                    case Reaction.ENZYME:
                        enzymesIndex = i;
                        break;
                    case Reaction.RATE_PARAMETERS:
                        paramIndex = i;
                        break;
                    default:
                        continue;
                }
            }
            if( idIndex == -1 || nameIndex == -1 || stoichIndex == -1 || enzymesIndex == -1 || paramIndex == -1 )
            {
                System.out.println( "ERROR: One of the column was missed, check table for \"" + Reaction.ID + "\", \"" + Reaction.NAME
                        + "\", \"" + Reaction.STOICHIOMETRY + "\", \"" + Reaction.ENZYME + "\", \"" + Reaction.RATE_PARAMETERS + "\"" );
                return result;
            }
            while( ( line = br.readLine() ) != null )
            {
                parts = line.split( ";" );
                Reaction reaction = new Reaction( parts[idIndex], parts[nameIndex], parts[stoichIndex], parts[enzymesIndex],
                        parts[paramIndex] );
                if( reaction.areReactantsAllowable( names ) )
                    result.add( reaction );
            }
        }
        return result;
    }

}
