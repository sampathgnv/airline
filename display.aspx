<%@ Page Language="C#" AutoEventWireup="true" CodeFile="display.aspx.cs" Inherits="display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <asp:Label ID="title" runat="server" Font-Size="XX-Large"></asp:Label>
        <h1>............................................</h1>
        <table id="bookticket" style="width: 30%">
            <tr>
                <td>Plane ID</td>
                <td>:</td>
                <td><asp:Label ID="planeid" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>Company</td>
                <td>:</td>
                <td><asp:Label ID="company" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>Source</td>
                <td>:</td>
                <td><asp:Label ID="source" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>Destination</td>
                <td>:</td>
                <td><asp:Label ID="destination" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>Arrival</td>
                <td>:</td>
                <td><asp:Label ID="arrival" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>Departure</td>
                <td>:</td>
                <td><asp:Label ID="departure" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>Price</td>
                <td>:</td>
                <td><asp:Label ID="price" runat="server"></asp:Label></td>
            </tr>
        </table>
        <p align="center">
        <asp:Button ID="back" runat="server" Text="Back To Homepage" OnClick="back_Click" />
        </p>
    </div>
    </form>
</body>
</html>
