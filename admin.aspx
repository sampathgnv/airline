<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
		function isDelete()
		{
			return confirm("Do you want to delete this row ?");
		}
	</script>
</head>
<body>
    <form id="form1" runat="server">
        <h1 align="center">Admin Panel</h1>
        <h3 align="center">Data Modification</h3>
        <h1>  </h1>
        <h1>  </h1>
        <asp:HyperLink ID="logout" runat="server" NavigateUrl="~/login.aspx">LogOut</asp:HyperLink>
    <div align="center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="flightdata" ForeColor="#333333" 
                GridLines="None" style="text-align: center" AutoGenerateSelectButton="False" AutoGenerateEditButton="True" DataKeyNames="plane_id">
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
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
                    <asp:TemplateField>
            			<ItemTemplate>
            				<asp:LinkButton ID="DeleteBtn" runat="server" CommandName="Delete"
                				OnClientClick="return isDelete();">Delete
				            </asp:LinkButton>
			            </ItemTemplate>
		            </asp:TemplateField>
                </Columns>
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
     </div>
        <asp:SqlDataSource ID="flightdata" runat="server" ProviderName="System.Data.SqlClient"  ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\databases\airline.mdf;Integrated Security=True;Connect Timeout=30" 
            SelectCommandType="Text" SelectCommand="SELECT * FROM flight_data" UpdateCommand="UPDATE [flight_data] SET [company] = @company , [source] =  @source , [destination] = @destination , [arrival] = @arrival , [departure] = @departure , [price] = @price WHERE [plane_id] = @plane_id" DeleteCommand="DELETE From [flight_data] WHERE [plane_id] = @plane_id" >
            <UpdateParameters>
        	    <asp:Parameter Type="String" Name="company"></asp:Parameter>
    	        <asp:Parameter Type="String" Name="source"></asp:Parameter>
          	    <asp:Parameter Type="String" Name="destination"></asp:Parameter>
    	        <asp:Parameter Type="String" Name="arrival"></asp:Parameter>
    	        <asp:Parameter Type="String" Name="departure"></asp:Parameter>
                <asp:Parameter Type="Int32" Name="price"></asp:Parameter>
    	    </UpdateParameters>
            <DeleteParameters>
		        <asp:Parameter Name="plane_id" Type="String" />
	        </DeleteParameters>
        </asp:SqlDataSource>
        <h1> </h1>
        <h1> </h1>
        <p> </p>
        <p> </p>
        <p> </p>
        <h3 align="center">Data Insertion</h3>
        <h1> </h1>
        <h1> </h1>
        <asp:Label ID="testlabel" runat="server"/>
        <table align="center">
            <tr align="center">
                <td>Plane ID</td>
                <td>Company</td>
                <td>Source</td>
                <td>Destination</td>
                <td>Arrival</td>
                <td>Departure</td>
                <td>Price</td>
            </tr>
            <tr align="center">
                <td><asp:TextBox ID="plane_id" runat="server"></asp:TextBox></td>
                <td><asp:TextBox ID="company" runat="server"></asp:TextBox></td>
                <td><asp:TextBox ID="source" runat="server"></asp:TextBox></td>
                <td><asp:TextBox ID="destination" runat="server"></asp:TextBox></td>
                <td><asp:TextBox ID="arrival" runat="server"></asp:TextBox></td>
                <td><asp:TextBox ID="departure" runat="server"></asp:TextBox></td>
                <td><asp:TextBox ID="price" runat="server"></asp:TextBox></td>
            </tr>
        </table>
        <div align="center">
            <asp:Button ID="Insert" runat="server" Text="Insert" OnClick="Insert_Click" /><asp:Button ID="Clear" runat="server" Text="Clear" OnClick="Clear_Click" />
        </div>
    </form>
</body>
</html>
