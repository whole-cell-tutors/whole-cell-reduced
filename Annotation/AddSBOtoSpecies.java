
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.HashMap;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

/**
 * Class generated for the Whole-Cell to add SBO terms to Species of an SBML
 * file. Takes as input arguments the XML file and the corresponding CSV file
 * from Jonathan Karr's excel sheets (species sheet). Returns as output a new
 * SBML file with the SBO terms for the species.<br>
 * <br>
 * Run in a shell as:<br>
 * <code>
 * > javac AddSBOtoSpecies.java<br>
 * > java AddSBOtoSpecies [xml file] [csv file]
 * </code><br>
 *
 * @author Vasundra
 *
 */

public class AddSBOtoSpecies {
    // mapping of sbml species ids with corresponding SBOterm
    public static HashMap<String, String> id_SBOterm = new HashMap<>();
    // The different types of entities
    public static String[] listOfTypes = { "metabolite", "rna", "rna-aa", "protein-complex", "protein-monomer" };

    public static String linkSBOtermtoType(String type) {
        // Map SBOterms to the type of an entity
        switch (type) {
        case "metabolite":
            return "SBO:0000247";
        case "rna":
            return "SBO:0000354";
        case "protein-complex":
            return "SBO:0000253";
        case "protein-monomer":
            return "SBO:0000245";
        case "rna-aa":
            return "SBO:0000253";
        default:
            return null;
        }
    }

    public static void parseDoc(File xml, String resultFileName) throws TransformerException, IOException,
            ParserConfigurationException, SAXException {
        /*
         * - Read the XML input - Add 'sboTerm' attribute - Write a new file
         * with SBO terms
         */
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        DocumentBuilder db = dbf.newDocumentBuilder();
        Document sbmlDoc = db.parse(xml);

        NodeList speciesList = sbmlDoc.getElementsByTagName("species");
        for (int temp = 0; temp < speciesList.getLength(); temp++) {
            NamedNodeMap listNodeTags = speciesList.item(temp).getAttributes();
            Node items = speciesList.item(temp);
            if (items.getNodeType() == Node.ELEMENT_NODE) {
                Element e = (Element) items;
                String id = e.getAttribute("id");
                String sbo = id_SBOterm.get(id);
                if (sbo == null)
                    continue;
                Attr newSBO = sbmlDoc.createAttribute("sboTerm");
                newSBO.setValue(sbo);
                // add SBO attribute to species tag :
                // <species ... sboTerm="SBO:000...">
                listNodeTags.setNamedItem(newSBO);
            }
        }

        Transformer transformer = TransformerFactory.newInstance().newTransformer();
        transformer.setOutputProperty(OutputKeys.INDENT, "yes");
        StreamResult result = new StreamResult(new StringWriter());
        DOMSource source = new DOMSource(sbmlDoc);
        transformer.transform(source, result);
        String xmlString = result.getWriter().toString();

        // Write XML file with SBOterms
        try (Writer writer = new PrintWriter(resultFileName, "utf-8")) {
            writer.write(xmlString);
        }
    }

    public static void mapIDwithtype(File csv) throws IOException {
        // Returns the type of an ID thanks to the CSV file
        String line = null;
        try (BufferedReader br = new BufferedReader(new FileReader(csv))) {
            while ((line = br.readLine()) != null) {
                String[] data = line.split("\t");
                id_SBOterm.put(data[0] + "__" + data[2], linkSBOtermtoType(data[4]));
            }
        }
    }

    // arguments to give: 1) XMl file and 2) CSV file (columns from excel
    // species sheet must be split by tab!)
    public static void main(String[] args) throws Exception {
        if (args.length > 0) {
            if (args.length == 2) { // args[0] = xml file , args[1] = csv file
                File xmlFile = new File(args[0]);
                File csvFile = new File(args[1]);
                String resultFileName = xmlFile.getPath().substring(0, xmlFile.getPath().indexOf(".xml")) + "_withSBO.xml";
                mapIDwithtype(csvFile);
                parseDoc(xmlFile, resultFileName);
                System.out.println("Adding SBOterms: done. A new file " + resultFileName + " has been created");
            } else {
                System.out.println("Wrong number of arguments given");
            }

        } else {
            System.out.println("No arguments given.");
        }
    }
}
