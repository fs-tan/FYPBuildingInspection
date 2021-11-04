using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuildingInspection
{
    public partial class Login : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string pass = userPassword.Text;
                string hashedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(pass, "SHA1");
                User source = db.Users.SingleOrDefault(x => x.userName == userName.Text && x.userPassword == hashedPassword);
                if (source != null)
                {
                    error.Text = "";
                    Session["userID"] = source.userID;
                    Response.Write("<script language='javascript'>window.alert('Login Successful! Welcome to our project!');;window.location='HomePage.aspx';</script>");
                }
                else
                {
                    error.Text = "Wrong email or password !";
                    userName.Text = "";
                    userPassword.Text = "";
                }
            }
        }
    }
}