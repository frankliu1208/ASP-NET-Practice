<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reg.aspx.cs" Inherits="myweb.Reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="regtable">
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
                    <td>Name</td><td>
                    <asp:TextBox ID="name" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td>Address</td><td>
                    <asp:TextBox ID="address" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td>Sex</td><td>
                    <asp:DropDownList ID="sex" runat="server">
                        <asp:ListItem Value="1">Man</asp:ListItem>
                        <asp:ListItem Value="2">Lady</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                </tr>
                <tr> 
                    <td>Mobile</td><td>
                     <asp:TextBox ID="mobile" runat="server"></asp:TextBox>
                    </td>
                   
                </tr>
                <tr>
                    <td>Email</td><td>
                     <asp:TextBox ID="email" runat="server"></asp:TextBox>
                    </td>
                   
                </tr>
                <tr>
                    <td>QQ</td><td>
                    <asp:TextBox ID="qq" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td>&nbsp;</td><td>
                    <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
