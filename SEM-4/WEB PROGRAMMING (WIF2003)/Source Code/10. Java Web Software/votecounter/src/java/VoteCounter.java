	/* VoteCounter.java
   This servlet processes the ballot form, returning a
   document asking for a new vote if no vote was made on the
   ballot. For legitimate ballots, the vote is added to
   the current totals, and those totals are presented to
   the user in a return document.
   A cookie is returned to the voter, recording the fact
   that a vote was received. The servlet examines all votes
   for cookies to ensure that there is no multiple voting.
   The voting data file, votesdat.ser, is stored on the Web
   server.
  */
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class VoteCounter extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, 
                                  HttpServletResponse response)
            throws ServletException, IOException {
        Cookie[] cookies = null;
        int index;
        Cookie newCookie;
        int[] votes = null;
        String vote;
        File votesdat = new File("c:/Users/bob7/My Documents/votesdat.ser");
        String[] candidates = {"Daren Dogman", "Timmy Taildragger",
            "Don Dogpile"
        };
        // Set content type for response and get a writer
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        // Get cookies from the request
        cookies = request.getCookies();
        // Check to see if there was a vote on the form
        vote = request.getParameter("vote");
        if (vote == null) {  //** There was no vote
            // Create the return document
            makeHeader(response, out);
            out.println(
                  "You submitted a ballot with no vote marked <br />");
            out.println(
                    "Please mark the ballot and resubmit");
        } //** end of if (vote == null) ...
        else {  //** There was a vote
            // Check to see if this client voted before
            if (!votedBefore(cookies)) {
                // No previous vote, so get the contents of the file
                //  (if the file already exists)
                // Synchronize block for file input–output
                synchronized (this) {
                    if (votesdat.exists()) {
                        ObjectInputStream indat = 
                 new ObjectInputStream(new FileInputStream(votesdat));
                        // We need the try–catch here because  
                        //  readObject can throw ClassNotFound 
                        try {
                            votes = (int[]) indat.readObject();
                        } catch (ClassNotFoundException problem) {
                            problem.printStackTrace();
                        }
                    } //** end of if(votesdat.exists() ...
                    
                    // If the file does not exist (this is the first 
                    //  vote), create the votes array
                    else {
                        votes = new int[3];                    
                        
                    // Add the new vote to the votes array
                    }
                    if (vote.equals("Dogman")) {
                        votes[0]++;
                    } else if (vote.equals("Taildragger")) {
                        votes[1]++;
                    } else {
                        votes[2]++;
                    }  //** end of if (vote.equals("Dogman")) 
                    // Write updated votes array to disk
                    ObjectOutputStream outdat = new ObjectOutputStream(
                            new FileOutputStream(votesdat));
                    outdat.writeObject(votes);
                    outdat.flush();
                    outdat.close();
                }  //** end of synchronized block
                // Attach a cookie to the response
                newCookie = new Cookie("iVoted", "true");
                newCookie.setMaxAge(5);   //** Set to 5 for testing
                response.addCookie(newCookie);
                // Write a response message
                makeHeader(response, out);
                out.println("Your vote has been received");
                out.println(
                        "<br /><br /> Current Voting Totals: <br />");
                // Create the total votes return information
               for (index = 0; index < votes.length; index++) {
                    out.println("<br />");
                    out.print(candidates[index]);
                    out.print(": ");
                    out.println(votes[index]);
                }
            } //** end of if (!votedBefore(cookies) ...
            else {  // The client voted before
                // Write a response message
                makeHeader(response, out);
                out.println(
                     "Your vote is illegal - you have already voted!");
            }  // end of else clause - client voted before
        }  // end of else (there was a vote)
        // Finish response document and close the stream
        out.println("</body> </html>");
        out.close();
    }  //** end of ProcessRequest
    //---------------------------------------------------------
    // Method votedBefore - return true if the client voted before;
    //  false otherwise
    private boolean votedBefore(Cookie[] cookies) {
        if (cookies == null || cookies.length == 0) {
            return false;
        } else {
            // Check the cookies to see if this user voted before
            for (Cookie cookie: cookies) {
                if (cookie.getName().equals("iVoted")) {
                    return true;
                }
            }  // end of for (index = 0; ...
            return false;
        }  //** end of if (cookies == null ...
    }  //** end of votedBefore
    //----------------------------------------------------
    // Method makeHeader - get the writer and produce the
    //  response header
    private void makeHeader(HttpServletResponse response, 
                            PrintWriter out)
            throws IOException {
        // Write the response document head and the message
        out.println("<html><head>");
        out.println(
          "<title> Return message </title></head><body>");
    }  //** end of makeHeader
    // Method doPost - just calls processRequest
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}  

