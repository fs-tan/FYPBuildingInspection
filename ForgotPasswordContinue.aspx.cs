using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuildingInspection
{
    public partial class ForgotPasswordContinue : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void continue_Click(object sender, EventArgs e)
        {
            string username = Convert.ToString(Session["username"]);
            string pass = Password.Text;
            string conpass = cPassword.Text;
            if (pass == conpass)
            {
                var result = db.Users.Where(user => user.userName == username).FirstOrDefault();
                result.userPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(pass, "SHA1");
                db.SubmitChanges();
                Response.Write("<script language='javascript'>window.alert('Congratulations. You can log in with the new password now.');;window.location='Login.aspx';</script>"); ;
            }
            else
            {
                passwordMessage.Text = "Password and Confirm password not match.";
            }
        }
    }
}