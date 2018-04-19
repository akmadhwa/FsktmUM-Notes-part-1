// borders2.js 
//   An example of a switch statement for table border
//   size selection

var bordersize;
var err = 0;
bordersize = prompt("Select a table border size: " +
                    "0 (no border), " +
                    "1 (1 pixel border), " +
                    "4 (4 pixel border), " +
                    "8 (8 pixel border) \n");

switch (bordersize) {
  case "0": document.write("<table>");
            break;
  case "1": document.write("<table border = '1'>");
            break;
  case "4": document.write("<table border = '4'>");
            break;
  case "8": document.write("<table border = '8'>");
            break;
  default: {
            document.write("Error - invalid choice: ", 
                            bordersize, "<br />");
            err = 1;
           }
} 

if (err == 0) {
  document.write("<caption> 2010 NFL Divisional",
                 " Winners </caption>");
  document.write("<tr>",
                 "<th />",
                 "<th> American Conference </th>",
                 "<th> National Conference </th>",
                 "</tr>",
                 "<tr>",
                 "<th> East </th>",
                 "<td> New England Patriots </td>",
                 "<td> Washington Redskins </td>",
                 "</tr>",
                 "<tr>",
                 "<th> North </th>",
                 "<td> Baltimore Ravens </td>",
                 "<td> Green Bay Packers </td>",
                 "</tr>",
                 "<th> West </th>",
                 "<td> Denver Broncos </td>",
                 "<td> San Francisco 49ers </td>",
                 "</tr>",
                 "<tr>",
                 "<th> South </th>",
                 "<td> Houston Texans </td>",
                 "<td> Atlanta Falcons </td>",
                 "</tr>",
                 "</table>")
}
