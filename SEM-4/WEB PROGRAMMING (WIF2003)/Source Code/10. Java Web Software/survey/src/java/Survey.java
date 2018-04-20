/* Survey.java 
   Processes the consumer electronics survey form, updating the
   file that stores the survey data and producing the cumulative
   number of votes in the survey. The survey data file, survdat.ser, 
   is stored on the Web server.
  */
import java.io.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Survey extends HttpServlet {
    protected void processRequest(HttpServletRequest request,
                                  HttpServletResponse response)
            throws ServletException, IOException {
        int[] votes = null;
        int index;
        int vote;
        File survdat = new File("c:/Users/bob7/My Documents/survdat.ser");
        String gender;
        String[] products = {"TV", "Digital Camera", "MP3 player",
            "DVD player/recorder", "Camcorder", "PDA", "Other"};
       // Set the content type for the response and get a writer
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        // Create the initial part of the response document
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Return message</title>");
            out.println("</head>");
            out.println("<body>");
     
            // Synchronize a block for the votes file access
            synchronized (this) {
                // If the file already exists, read in its data
             try {
                    if (survdat.exists()) {
                         ObjectInputStream indat = new 
                         ObjectInputStream(new FileInputStream(
                          survdat));
                        votes = (int[]) indat.readObject();
                        indat.close();
                    } 
                     // If the file does not exist (this is the first
                    //  vote), create the votes array
                    else {
                        votes = new int[14];
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                // Get the gender of the survey respondent’s
                gender = request.getParameter("gender");
             // Add the consumer electronics vote of the response
             //  to the votes array
             vote = Integer.parseInt(request.getParameter ("vote"));
                if (gender.equals("male")) {
                    vote += votes.length / 2;
                }
                votes[vote]++;
               
               //Write updated votes array to disk
               ObjectOutputStream outdat = new ObjectOutputStream(
                       new FileOutputStream(survdat));
               outdat.writeObject(votes);
               outdat.flush();
               outdat.close();
            }  //** end of the synchronized block
            // Create the initial response information
            out.println(
                    "<h3> Thank you for participating in the");
            out.println(" Consumer Electronics Survey </h3>");
            out.println("<h4> Current Survey Results: </h4>");
            // Create the cumulative total votes return information
            // for females
            out.println("<h5> For Female Respondents </h5>");
           for (index = 0; index < votes.length / 2; index++) {
                out.print(products[index]);
                out.print(": ");
                out.println(votes[index]);
                out.println("<br />");
            }
            // Create the cumulative total votes return information
            // for males
            out.println("<h5> For Male Respondents </h5>");
           for (index = votes.length / 2; index < votes.length; 
                index++) {
               out.print(products[index - (votes.length / 2)]);
                               out.print(": ");
                out.println(votes[index]);
                out.println("<br />");
            }
            out.close();
        }
    
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response)
            throws ServletException, IOException {
       processRequest(request, response);
    }
}

