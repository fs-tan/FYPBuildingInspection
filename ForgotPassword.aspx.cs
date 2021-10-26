using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuildingInspection
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void continue_Click(object sender, EventArgs e)
        {
            using (DataClasses1DataContext db = new DataClasses1DataContext())
            {
                User u = db.Users.SingleOrDefault(x => x.userName == userName.Text);
                if (u == null) //if not found, display error message
                {
                    usernameMessage.Text = ("Username Not Existed !");
                }
                else
                {
                    usernameMessage.Text = "";
                    Session["username"] = userName.Text;
                    Response.Redirect("ForgotPasswordContinue.aspx");
                }
            }
        }
    }
}