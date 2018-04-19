// sqlcars.aspx.cs
// The code-behind file for sqlcars.aspx
// Defines two methods in its class, MyClass
// The Page_Load method executes when the Page_Load event occurs
//  If IsPostBack, it calls the other method, DoCommand
// The DoCommand method creates the connection and command objects,
//  opens the connection, calls ExecuteReader to execute the SELECT
//  command. It then assigns the results to the data source of the
//  GridView control in the ASP.NET document 

using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

namespace sqlcars
{
    public partial class MyClass : System.Web.UI.Page
    {
        const string ConnStr = "Server=localhost;Database=cars;uid=root;";
        protected void Page_Load()
        {
            if (IsPostBack)
            {
                DoCommand(command.Text);
            }
        }

        protected void DoCommand(string command)
        {
            MySqlConnection con = new MySqlConnection();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandText = command;
            con.ConnectionString = ConnStr;
            try
            {
                con.Open();
                MySqlDataReader reader = cmd.ExecuteReader(
                                     CommandBehavior.CloseConnection);
                results.DataSource = reader;
                results.DataBind();
            }
            catch (Exception ex)
            {
                errors.Text = ex.Message;
            }
        }
    }
}
