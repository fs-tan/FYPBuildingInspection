using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuildingInspection
{
    public partial class DroneSchedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            //if (Page.IsValid)
            //{
            //    using (DataClasses1DataContext db = new DataClasses1DataContext())
            //    {
            //        Coordinate taskLat = db.Coordinates.SingleOrDefault(x => x.latitude == lat.Text);
            //        Coordinate taskLng = db.Coordinates.SingleOrDefault(x => x.longitude == lng.Text);
            //        if(taskLat == null && taskLng == null)
            //        {
            //            var taskLatValue = int.Parse(lat.Text);
            //            var taskLngValue = int.Parse(lng.Text);
            //            if(taskLatValue <= 90 || taskLatValue >= -90)
            //            {
            //                if(taskLngValue <= 180 || taskLngValue >= -180)
            //                {
            //                    latMessage.Text = "";
            //                    lngMessage.Text = "";
            //                    Coordinate c = new Coordinate
            //                    {

            //                    }
            //                }
            //            }
            //        }
            //        if (u == null) //if found, display error message
            //        {
            //            if (Password.Text == cPassword.Text)
            //            {
            //                usernameMessage.Text = "";
            //                passwordMessage.Text = "";
            //                User i = new User
            //                {
            //                    userName = userName.Text,
            //                    userPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(Password.Text, "SHA1"),
            //                };
            //                db.Users.InsertOnSubmit(i);
            //                db.SubmitChanges();
            //                Response.Write("<script language='javascript'>window.alert('Account created! You can log in to our project now.');window.location='Login.aspx';</script>");
            //            }
            //            else
            //            {
            //                usernameMessage.Text = "";
            //                passwordMessage.Text = ("Password and confirm password not match!");
            //            }

            //        }
            //        else
            //        {
            //            usernameMessage.Text = ("Username Existed !");
            //        }
            //    }
            //}
        }
    }
}