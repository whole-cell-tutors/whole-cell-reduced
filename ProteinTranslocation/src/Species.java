

public class Species
{
    public static final String ID = "ID";
    public static final String NAME = "Name";
    public static final String COMPARTMENT = "Compartment";
    public static final String COPY_NUMBER = "Copy number, typical";
    public static final String TYPE = "Type";

    final String id;
    final String name;
    final String compartment;
    final double copyNum;

    public Species(String id, String name, String compartment, String copyNum, String type)
    {
        this.compartment = compartment;
        this.name = name.isEmpty() ? type + ", " + id : name;
        this.id = id + "__" + compartment;
        double copy = 0;
        try
        {
            copy = Double.parseDouble( copyNum );
        }
        catch( NumberFormatException e )
        {
            System.out.println( "Invalid copy number " + copyNum + " for species " + id );
        }
        this.copyNum = copy;
    }
}