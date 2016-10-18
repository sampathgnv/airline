<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            background-image: url(App_Data/airline.jpg);
        }
        
    </style>
</head>
<body>
    <div align="center">
        <asp:Label ID="header" runat="server" Text="Airine Reservation Portal" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
        <h1>  </h1>
    </div>
    
    <form id="form1" runat="server" style="align-content:center">
    <div align="center">
        <table style="width: 30%;">
        <tr>
            <td>Username:</td>
            <td><asp:TextBox ID="username" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
        </table>
    </div>
        <div align="center">
            <asp:Label ID="warning" runat="server" ForeColor="Red"></asp:Label>
        </div>
        <div align="center">
        <asp:Button ID="submit" runat="server" Text="Submit" OnClick="login_Click" />
        </div>
     </form>
</body>
</html>
