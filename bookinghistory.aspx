<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookinghistory.aspx.cs" Inherits="bookinghistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function isUpdate()
        {
            return alert("Enter Desired Journey Date!");
        }
		function isDelete()
        {
		    return confirm("Do you want to cancel this ticket?");
		}
	</script>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <asp:GridView ID="booking_history" runat="server" AutoGenerateColumns="False" 
                CellPadding="3" ForeColor="Black" DataSourceID="bookhistory" DataKeyNames="booking_id"
                GridLines="Vertical" style="text-align: center" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
                <FooterStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="booking_id" ReadOnly="true" HeaderText="Booking ID" 
                        SortExpression="booking_id" />
                    <asp:BoundField DataField="plane_id" ReadOnly="true" HeaderText="Plane ID" 
                        SortExpression="plane_id" />
                    <asp:BoundField DataField="company" ReadOnly="true" HeaderText="Company" 
                        SortExpression="company" />
                    <asp:BoundField DataField="source" ReadOnly="true" HeaderText="Source" 
                        SortExpression="source" />
                    <asp:BoundField DataField="destination" ReadOnly="true" HeaderText="Destination" 
                        SortExpression="destination" />
                    <asp:BoundField DataField="doj" ReadOnly="false" HeaderText="DOJ" 
                        SortExpression="doj" />
                    <asp:BoundField DataField="time" ReadOnly="true" HeaderText="Time"
                        SortExpression="time" />
                    <asp:BoundField DataField="price" ReadOnly="true" HeaderText="Price"
                        SortExpression="price" />
                    <asp:TemplateField>
                        <ItemTemplate>
            				<asp:LinkButton ID="cancel" runat="server" CommandName="Delete"
                				OnClientClick="return isDelete();">Cancel
				            </asp:LinkButton>
			            </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        <asp:SqlDataSource ID="bookhistory" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\databases\airline.mdf;Integrated Security=True;Connect Timeout=30">
            <UpdateParameters>
                <asp:Parameter Type="String" Name="doj"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>

        <div align="center">
            <asp:Label ID="empty" runat="server" Font-Size="XX-Large"></asp:Label>
            <br />
            <br />
        </div>
        
    </div>
        <p align="center">
        <asp:Button ID="back" runat="server" Text="Back To Homepage" OnClick="back_Click" />
        </p>
    </form>
</body>
</html>
