using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuildingInspection
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void continue_Click(object sender, EventArgs e)
        {
            var user = db.Users.SingleOrDefault(x => x.userID == int.Parse(Session["userID"].ToString()));

            string pass = Password.Text;
            string conpass = cPassword.Text;
            if (pass == conpass)
            {
                user.userPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(pass, "SHA1");
                db.SubmitChanges();
                Response.Write("<script language='javascript'>window.alert('Congratulations. You have updated your password.')" +
                    ";window.location='Profile.aspx';</script>");
            }
            else
            {
                Label3.Text = "Password and Confirm password not match.";
            }
        }
    }
}