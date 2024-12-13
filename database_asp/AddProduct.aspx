<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="database_asp.AddProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" >
        <div>
            Product name&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox class="form-control" ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            Category&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" >
                <asp:ListItem>Laptop</asp:ListItem>
                <asp:ListItem>Mobile</asp:ListItem>
                <asp:ListItem>Food</asp:ListItem>
            </asp:DropDownList>
            <br />
            Img&nbsp;&nbsp;&nbsp; <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />
            <br />
            price
            <asp:TextBox class="form-control" ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button  ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
