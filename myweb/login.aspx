<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="myweb.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="logintable"> 
                <tr>
                    <td>Username</td><td>
                    <asp:TextBox ID="username" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Password</td><td>
                    <asp:TextBox ID="password" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td><td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log On" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
