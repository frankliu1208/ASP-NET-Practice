using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YF;

namespace myweb
{
    public partial class Reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            YFModel.User user = new YFModel.User();   // initiate a object of YFModel.User class

            user.Username = this.username.Text;  // the data that users enter need to be stored in Model.User file
            user.Password = this.password.Text;   // this.username.Text get the data from customer input,  then give this value to the  user object
            user.Name = this.name.Text;             // name is related to <asp:TextBox ID="name" runat="server"></asp:TextBox> in reg.aspx
            user.Address = this.address.Text;
            user.Sex = int.Parse(this.sex.Text);
            user.Mobile = this.mobile.Text;
            user.Email = this.email.Text;
            user.Qq = this.qq.Text;
            user.State = 1;
            user.Adddate = DateTime.Now;


            if(YFBLL.User.Search(this.username.Text) == false)
            {
                YF.JsHelper.AlertAndRedirect("username has already existed", "reg.aspx");
            }


            if (YFBLL.User.add(user)== true  )  // put the data of user object into the database
            {
                YF.JsHelper.AlertAndRedirect("register succeded", "index.aspx");
            }
            else
            {
                YF.JsHelper.AlertAndRedirect("register failed", "index.aspx");
            };

        }
    }
}