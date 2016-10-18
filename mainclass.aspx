<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mainclass.aspx.cs" Inherits="mainclass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
</head>
<body>
    <div align="left">
        <asp:HyperLink ID="logout" runat="server" NavigateUrl="~/login.aspx">LogOut</asp:HyperLink>
    </div>
    <div align="center">
    <asp:Label ID="header" runat="server" Text="Label" Font-Size="XX-Large"></asp:Label>
    </div>
    <div align="right">
        <asp:HyperLink ID="bh" runat="server" NavigateUrl="~/bookinghistory.aspx">View Booking History</asp:HyperLink>
    </div>
    <h1>   </h1>
    <form id="form1" runat="server">
    <div align="center">
        <table style="width: 50%;">
            <tr>
                <td>Source:</td>
                <td><asp:DropDownList ID="source" runat="server">
                    <asp:ListItem Text="Mumbai, IN - Chatrapati Shivaji Airport (BOM)">Mumbai, IN - Chatrapati Shivaji Airport (BOM)</asp:ListItem>
                    <asp:ListItem Text="Chennai, IN - Chennai Airport (MAA)">Chennai, IN - Chennai Airport (MAA)</asp:ListItem>
                    <asp:ListItem Text="Bangalore, IN - Kempegowda International Airport (BLR)">Bengaluru, IN - Kempegowda International Airport (BLR)</asp:ListItem>
                    <asp:ListItem Text="Hyderabad, IN - Rajiv Gandhi International (HYD)">Hyderabad, IN - Rajiv Gandhi International (HYD)</asp:ListItem>
                    <asp:ListItem Text="Visakhapatnam, IN - Vishakhapatnam (VTZ)">Visakhapatnam, IN - Vishakhapatnam (VTZ)</asp:ListItem>
                    <asp:ListItem Text="Bangkok, TH - Suvarnabhumi (BKK)">Bangkok, TH - Suvarnabhumi (BKK)</asp:ListItem>
                    <asp:ListItem Text="College Station, US - Easterwood Field (CLL)">College Station (US), US - Easterwood Field (CLL)</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>Destination:</td>
                <td><asp:DropDownList ID="destination" runat="server">
                    <asp:ListItem Text="Mumbai, IN - Chatrapati Shivaji Airport (BOM)">Mumbai, IN - Chatrapati Shivaji Airport (BOM)</asp:ListItem>
                    <asp:ListItem Text="Chennai, IN - Chennai Airport (MAA)">Chennai, IN - Chennai Airport (MAA)</asp:ListItem>
                    <asp:ListItem Text="Bangalore, IN - Kempegowda International Airport (BLR)">Bengaluru, IN - Kempegowda International Airport (BLR)</asp:ListItem>
                    <asp:ListItem Text="Hyderabad, IN - Rajiv Gandhi International (HYD)">Hyderabad, IN - Rajiv Gandhi International (HYD)</asp:ListItem>
                    <asp:ListItem Text="Visakhapatnam, IN - Vishakhapatnam (VTZ)">Visakhapatnam, IN - Vishakhapatnam (VTZ)</asp:ListItem>
                    <asp:ListItem Text="Bangkok, TH - Suvarnabhumi (BKK)">Bangkok, TH - Suvarnabhumi (BKK)</asp:ListItem>
                    <asp:ListItem Text="College Station, US - Easterwood Field (CLL)">College Station (US), US - Easterwood Field (CLL)</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>Type of Journey:</td>
                <td><asp:RadioButton ID="ow" runat="server" Text="One-Way" OnCheckedChanged="ow_CheckedChanged" />&nbsp&nbsp&nbsp<asp:RadioButton ID="rt" runat="server" Text="Round-Trip" OnCheckedChanged="rt_CheckedChanged" /></td>
            </tr>
            <tr>
                <td>Journey Date:</td>
                <td><asp:TextBox ID="doj" runat="server" TextMode="Date"></asp:TextBox></td>
            </tr>
            <tr>
                <td>No. of Passengers:</td>
                <td><asp:DropDownList ID="nop" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
        </table>
        <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />
    </div>
    </form>
</body>
</html>
