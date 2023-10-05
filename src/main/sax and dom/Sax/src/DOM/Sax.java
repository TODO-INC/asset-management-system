/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DOM;

/**
 *
 * @author rapid
 */
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import java.util.Scanner;

public class Sax{
    public static int c=0;
    public static int v=0;
    public static void main(String[] args) {
        try {
            // Specify the path to your XML file
            String filePath = "E:\\java\\Sax\\src\\DOM\\student.xml";

            // Create a DocumentBuilder
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();

            // Parse the XML file
            Document document = builder.parse(filePath);

            // Get the root element
            Element root = document.getDocumentElement();

            // Get a list of all student elements
            NodeList studentList = root.getElementsByTagName("student");

            // Create a Scanner for user input
            Scanner scanner = new Scanner(System.in);

            // Ask the user for a student ID
            System.out.print("Enter Student ID: ");
            String inputId = scanner.nextLine();

            // Iterate through each student element to find the matching ID
            for (int i = 0; i < studentList.getLength(); i++) {
                Element student = (Element) studentList.item(i);

                // Get the student ID from the XML
                String studentId = student.getElementsByTagName("studentid").item(0).getTextContent();

                // Check if the input ID matches the current student's ID
                if (inputId.equals(studentId)) {
                    // Get the values of other child elements
                    String name = student.getElementsByTagName("name").item(0).getTextContent();
                    String address = student.getElementsByTagName("address").item(0).getTextContent();
                    String gender = student.getElementsByTagName("gender").item(0).getTextContent();

                    // Print student details
                    v=1;
                    System.out.println("Student ID: " + studentId);
                    System.out.println("Name: " + name);
                    System.out.println("Address: " + address);
                    System.out.println("Gender: " + gender);
                    System.out.println();
                    break; // Exit the loop once a match is found
                }
                else
                {
                    //System.out.println("Student id not valid");
                    c=1;
                }
            }
if(c==1 && v==0)
{
    System.out.println("Student id not valid");
}
            // Close the scanner
            scanner.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}