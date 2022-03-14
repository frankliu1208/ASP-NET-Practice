<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="myweb.index" %>
<%@ Import Namespace ="YFBLL" %>
<%@ Import Namespace ="YFModel" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="indextable">
                <tr><td class="auto-style1">No.</td><td class="auto-style1">Username</td><td class="auto-style1">Password</td><td class="auto-style1">Name</td><td class="auto-style1">Address</td><td class="auto-style1">Sex</td><td class="auto-style1">Cell phone</td><td class="auto-style1">Mailbox</td><td class="auto-style1">QQ</td><td class="auto-style1">Status</td><td class="auto-style1">Time</td><td class="auto-style1">Operation</td></tr>
                <%
                    string id = Request.QueryString["id"];

                    if (id != null)
                    {
                        YFBLL.User.del(int.Parse(id));
                        YF.JsHelper.AlertAndRedirect("delete succeeded", "index.aspx");
                    }

                    List<YFModel.User> list = YFBLL.User.list();
                    %>
                <% for (int i = 0; i < list.Count; i++)
                    {
                        string sex = "";
                        string state = "";
                        if (list[i].Sex ==1)
                        {
                            sex = "Man";
                        }
                        else
                        {
                            sex = "woman";
                        }

                        if (list[i].State == 1)
                        {
                            state= "normal";
                        }
                        else
                        {
                            state= "closed";
                        }


                        %>
                        <tr><td><%=list[i].Id %></td><td><%=list[i].Username %></td><td><%=list[i].Password %></td><td><%=list[i].Name %></td><td><%=list[i].Address %></td><td><%=sex %></td><td><%=list[i].Mobile %></td><td><%=list[i].Qq %></td><td><%=list[i].Email %></td><td><%=state %></td><td><%=list[i].Adddate %></td><td><a href="index.aspx?id=<%=list[i].Id %>">Delete</a> | <a href="user_edit.aspx?id=<%=list[i].Id %>">Edit </a>  </td></tr>
                    <%}   %>

                
            </table>
        </div>
    </form>
</body>
</html>
