using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuildingInspection
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var db = new DataClasses1DataContext();
            var userID = int.Parse(Session["userID"].ToString());
            var user = db.Users.SingleOrDefault(x => x.userID == userID);

            if (user.userImage != null)
            {
                Image1.ImageUrl = $"~/profilePicture/{user.userImage}";
            }

            username.Text = user.userName;
            var p = "";
            for(int i = 0; i < user.userPassword.Length; i++)
            {
                p += "*";
            }
            password.Text = p;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}