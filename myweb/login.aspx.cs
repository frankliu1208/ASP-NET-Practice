using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myweb
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = this.username.Text;  
            string password = this.password.Text;

            if (YFBLL.User.login(username, password) == true)
            {
                YF.JsHelper.AlertAndRedirect("login succeded", "index.aspx");
            }
            else
            {
                YF.JsHelper.AlertAndRedirect("login failed", "login.aspx");
            }
        }
    }
}