// JDBCServlet.java
//  This servlet receives an SQL query from its HTML document,
//   connects to the cars database, performs the query on the
//   database, and returns an HTML table of the results of the
//   query

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet(name = "JDBCServlet", urlPatterns = {"/JDBCServlet"})
public class JDBCServlet extends HttpServlet {
  private Connection myCon;
  private Statement myStmt;
  private PrintWriter out;
  
  // The processRequest method - does it all for this project
  protected void processRequest(HttpServletRequest request, 
                                HttpServletResponse response)
            throws ServletException, IOException {
      ResultSet result;
      String query, colName, dat;
      int numCols, index;
      ResultSetMetaData resultMd;

 // Set the MIME type and get a writer
      response.setContentType("text/html;charset=UTF-8");
      out = response.getWriter();  
 
// Create the document head and body opening
      out.println("<html>");
      out.println("<head><title>JDBCServlet</title></head>");
      out.println("<body>");
       
// Create the connection to the cars db
      try {
          myCon = DriverManager.getConnection (
                    "jdbc:mysql://localhost/cars", "root", "");
      }
      catch (SQLException e) {
          out.println("getConnection failed");
      }
    
// Create the statement for SQL queries
    try {
      myStmt = myCon.createStatement();
    }
    catch (Exception e) {
        out.println("createStatement failed");
    }   
    
// Get the SQL request command
    query = request.getParameter("query");
    out.print("<p><b>The query is: </b>" + query + "</p>");

// Perform the query
    try {
        result = myStmt.executeQuery(query);

// Get the result's metadata and the number of result rows
        resultMd = result.getMetaData();
        numCols = resultMd.getColumnCount();

// Produce the table header and caption
        out.println("<table");
        out.println("<caption> <b> Query Results </b> </caption>");
        out.println("<tr>");
          
// Loop to produce the column headings
        for (index = 1; index <= numCols; index++) {
            colName = resultMd.getColumnLabel(index);
            out.print("<th>" + colName + "</th>");
        }
        out.println("</tr>");

// Loop to produce the rows of the result
        while (result.next()) {
            out.println("<tr>");

// Loop to produce the data of a row of the result
        for (index = 1; index <= numCols; index++) {
            dat = result.getString(index);
            out.println("<td>" + dat + "</td>");
        }  //** end of for (index = 0; ...
        out.println("</tr>");
    }  //** end of while (result.next()) ...
    out.println("</table>");
    }  //** end of try

    catch (Exception e) {
        out.println("executeQuery failed </br />");
    }  //** end of catch
    out.println("</body></html>");
  }  //** end of processRequest method
            
    @Override
    protected void doGet(HttpServletRequest request, 
                         HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
