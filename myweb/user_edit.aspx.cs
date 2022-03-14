using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myweb
{
    public partial class user_edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // the the user_edit page is loading,  we need to assign some values to the page from the database
            if (! IsPostBack)
            {
      
            string id = Request.QueryString["id"];
            YFModel.User user = YFBLL.User.Getuser(int.Parse(id));

            this.password.Text = user.Password;   // the data is comming from the object user of YFModel.User class, then assign to the page
            this.name.Text = user.Name;
            this.address.Text = user.Address;
            this.sex.Text = user.Sex.ToString();
            this.mobile.Text = user.Mobile;
            this.email.Text = user.Email;
            this.qq.Text = user.Qq;
            this.state.Text = user.State.ToString();
            this.id.Value = user.Id.ToString();  // 隐含控件

            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            // when user click the save button...

            YFModel.User user = new YFModel.User();
            user.Username = this.username.Text;
            user.Password = this.password.Text;
            user.Name = this.name.Text;
            user.Address = this.address.Text;
            user.Sex = int.Parse(this.sex.Text);
            user.Mobile = this.mobile.Text;
            user.Email = this.email.Text;
            user.Qq = this.qq.Text;
            user.State = int.Parse(this.state.Text); 
            user.Id = int.Parse(this.id.Value);


            

            if (YFBLL.User.update(user) == true)
            {
                YF.JsHelper.AlertAndRedirect("editing succeded", "index.aspx");
            }
            else
            {
                YF.JsHelper.AlertAndRedirect("editing failed", "index.aspx");
            };
        }
    }
}