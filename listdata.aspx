<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listdata.aspx.cs" Inherits="listdata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
        <form id="form1" runat="server">
    <div align="center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" 
                GridLines="Horizontal" style="text-align: center" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px">
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <Columns>
                    <asp:BoundField DataField="plane_id" HeaderText="Plane ID" 
                        SortExpression="plane_id" />
                    <asp:BoundField DataField="company" HeaderText="Company" SortExpression="company" />
                    <asp:BoundField DataField="source" HeaderText="Source" 
                        SortExpression="source" />
                    <asp:BoundField DataField="destination" HeaderText="Destination" 
                        SortExpression="destination" />
                    <asp:BoundField DataField="arrival" HeaderText="Arrival" 
                        SortExpression="arrival" />
                    <asp:BoundField DataField="departure" HeaderText="Departure"
                        SortExpression="departure" />
                    <asp:BoundField DataField="price" HeaderText="Price"
                        SortExpression="price" />
                </Columns>
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
     </div>
        
        <asp:Label ID="testlabel" runat="server"/>
    <div align="center">
        <asp:Label ID="test" runat="server"></asp:Label>
        <asp:Button ID="book" runat="server" Text="Book" OnClick="book_Click" />
    </div>
    </form>
</body>
</html>
