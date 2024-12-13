<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Email.aspx.cs" Inherits="database_asp.Email" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            background: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        form {
            width: 450px;
            margin: 80px auto;
            background: #ffffff;
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }

        h1 {
            font-size: 1.4em;
            margin-bottom: 20px;
            color: #333;
            text-align: center;
            border-bottom: 2px solid #FF6F00;
            padding-bottom: 10px;
        }

        .field-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            color: #333;
            margin-bottom: 8px;
        }

        input[type="text"],
        textarea,
        .asp-textbox {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        textarea {
            height: 120px;
        }

        /* Styling the button */
        .btn {
            background: #FF6F00;
            color: #fff;
            border: none;
            border-radius: 4px;
            padding: 10px 20px;
            font-size: 1em;
            font-weight: bold;
            cursor: pointer;
            width: 100%;
            text-align: center;
            margin-top: 10px;
        }

        .btn:hover {
            background: #cc5800;
        }

        /* Responsive Design */
        @media(max-width: 500px) {
            form {
                width: 90%;
                margin: 40px auto;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <h1>Send Email</h1>
        <div class="field-group">
            <label for="emails">Emails (Separate with commas):</label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="asp-textbox" TextMode="MultiLine" Rows="3"></asp:TextBox>
        </div>
        <div class="field-group">
            <label for="subject">Subject:</label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="asp-textbox"></asp:TextBox>
        </div>
        <div class="field-group">
            <label for="body">Body:</label>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="asp-textbox" TextMode="MultiLine" Rows="6"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" CssClass="btn" OnClick="Button1_Click" Text="Send Email" />
    </form>
</body>
</html>
