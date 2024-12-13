<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fetchproduct.aspx.cs" Inherits="database_asp.Fetchproduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                <div class="card" style="width: 18rem;">
                      <img class="card-img-top" src='<%#Eval("pic") %>'' alt="Card image cap">
                      <div class="card-body">
                        <h5 class="card-title"><%#Eval("pname")%></h5>
                         </div>
                      <ul class="list-group list-group-flush">
                        <li class="list-group-item">Product Category : <%#Eval("pcat")%></li>
                        <li class="list-group-item">Product Price : <%#Eval("price")%></li>
                       
                      <div class="card-body">
                        <a href="#" class="card-link">Card link</a>
                        <a href="#" class="card-link">Another link</a>
                      </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
