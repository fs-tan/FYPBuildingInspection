using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuildingInspection
{
    public partial class ChangeProfilePicture : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            var user = db.Users.SingleOrDefault(x => x.userID == int.Parse(Session["userID"].ToString()));

            if (user.userImage != null)
            {
                Image1.ImageUrl = $"~/profilePicture/{user.userImage}";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var user = db.Users.SingleOrDefault(x => x.userID == int.Parse(Session["userID"].ToString()));

            if (fileUpload_Profilepicture.HasFile)
            {
                string filename = $"{user.userID}_profilepicture.{fileUpload_Profilepicture.FileName.ToString().Split('.')[1]}";
                fileUpload_Profilepicture.PostedFile.SaveAs(Server.MapPath("~/profilePicture/") + filename);

                user.userImage = filename;
                db.SubmitChanges();

                var script = "alert(\"Dear user, you have change your profile picture successfully!\"); document.location.href='Profile.aspx';";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
            else
            {
                var script = "alert(\"Dear user, you have to upload the photo in order to change the profile picture successfully\"); document.location.href='Profile.aspx';";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
        }
    }
}