<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showdata.aspx.cs" Inherits="database_asp.showdata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="pid" DataSourceID="SqlDataSource2" PageSize="5">
                <Columns>
                    <asp:BoundField DataField="pid" HeaderText="pid" InsertVisible="False" ReadOnly="True" SortExpression="pid" />
                    <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
                    <asp:BoundField DataField="pcat" HeaderText="pcat" SortExpression="pcat" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="pic" HeaderText="pic" SortExpression="pic" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connection %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connection %>" DeleteCommand="DELETE FROM [product] WHERE [pid] = @pid" InsertCommand="INSERT INTO [product] ([pname], [pcat], [price], [pic]) VALUES (@pname, @pcat, @price, @pic)" SelectCommand="SELECT * FROM [product]" UpdateCommand="UPDATE [product] SET [pname] = @pname, [pcat] = @pcat, [price] = @price, [pic] = @pic WHERE [pid] = @pid">
                <DeleteParameters>
                    <asp:Parameter Name="pid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="pname" Type="String" />
                    <asp:Parameter Name="pcat" Type="String" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="pic" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="pname" Type="String" />
                    <asp:Parameter Name="pcat" Type="String" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="pic" Type="String" />
                    <asp:Parameter Name="pid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
