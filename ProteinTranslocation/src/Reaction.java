
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.stream.Stream;

public class Reaction
{
    public static final String ID = "ID";
    public static final String NAME = "Name";
    public static final String STOICHIOMETRY = "Stoichiometry";
    public static final String ENZYME = "Enzyme";
    public static final String RATE_PARAMETERS = "Rate parameters";

    final String id;
    final String name;
    final Map<String, Integer> reactStroich = new LinkedHashMap<>();
    final Map<String, Integer> prodStoich = new LinkedHashMap<>();
    final String rateParam;
    final double paramValue;
    final List<String> enzymes = new ArrayList<>();

    public Reaction(String id, String name, String stoich, String enzymes, String rateLaw)
    {
        this.id = id;
        this.name = name;

        String[] parts = stoich.split( "[-][>]" );
        processStoich( parts[0].trim(), reactStroich );
        processStoich( parts[1].trim(), prodStoich );

        parts = enzymes.split( "[,][ ]" );
        Stream.of( parts ).forEachOrdered( p -> this.enzymes.add( p.trim() ) );

        parts = rateLaw.split( "[=]" );
        rateParam = parts[0].trim();
        double value = 0;
        try
        {
            value = Double.parseDouble( parts[1] );
        }
        catch( NumberFormatException e )
        {
            System.out.println( "Invalid parameter value: " + rateLaw + " in reaction " + id );
        }
        this.paramValue = value;
    }

    private void processStoich(String str, Map<String, Integer> toFill)
    {
        StringTokenizer tokenizer = new StringTokenizer( str, "+", false );
        while( tokenizer.hasMoreTokens() )
        {
            String token = tokenizer.nextToken().trim();
            String[] parts = token.split( " " );
            Integer value = Integer.valueOf( parts[0] );
            String specie = parts[parts.length - 1];
            parts = specie.split( "[.]" );
            toFill.put( parts[1] + "__" + parts[0], value == null ? 0 : value );
            if( value == null )
                System.out.println( "Invalid stoichiometry: " + token );
        }
    }

    public boolean areReactantsAllowable(Set<String> allowableNames)
    {
        if( allowableNames.isEmpty() )
            return true;

        for( String reactant : reactStroich.keySet() )
        {
            boolean found1 = false;
            for( String allowableName : allowableNames )
            {
                if( reactant.startsWith( allowableName ) )
                    found1 = true;
            }
            if( !found1 )
                return false;
        }

        return true;
    }

}