<!-- sqlcars.aspx
     Presents a form that includes a text box to collect an SQL command,
     a submit button to call a method to execute the command, a label
     element to provide a place for error messages, and a GridView
     control to present the results of the SELECT command
     -->
     
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sqlcarss.aspx.cs" 
         Inherits="sqlcars.MyClass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
           "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Display results of SQL commands on cars db </title>
    <style type = "text/css">
      .titles {font-style: italic; font-weight: bold;}
    </style>
</head>
<body>
    <span class ="titles"> Please enter your command: </span>
    <form id="myForm" runat="server">
      <asp:TextBox ID="command"  columns = "80"  runat="server" />
      <br /><br />
      <asp:Button ID="Button1" Text="Submit command"  runat="server" />
      <br /><br />
      <span class ="titles"> Results of your command: </span>
      <br /><br />
      <asp:Label ID="errors" runat="server" />
      <asp:GridView ID="results" runat="server" />
    </form>
</body>
</html>
