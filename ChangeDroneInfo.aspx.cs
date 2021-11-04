using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuildingInspection
{
    public partial class ChangeDroneInfo : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            var user = db.Users.SingleOrDefault(x => x.userID == int.Parse(Session["userID"].ToString()));
            if (user != null)
            {
                var droneID = db.DroneInfos.SingleOrDefault(x => x.droneID == user.droneID);
                droneName.Text = droneID.droneName;
                currentLat.Text = droneID.latitude;
                currentLng.Text = droneID.longitude;
            }
        }

        protected void continue_Click(object sender, EventArgs e)
        {
            var user = db.Users.SingleOrDefault(x => x.userID == int.Parse(Session["userID"].ToString()));
            var droneID = db.DroneInfos.SingleOrDefault(x => x.droneID == user.droneID);
            droneID.droneName = droneName.Text;
            droneID.latitude = currentLat.Text;
            droneID.longitude = currentLng.Text;
            db.SubmitChanges();
            Response.Write("<script language='javascript'>window.alert('Congratulations. You have updated your drone info.');;window.location='DroneInfo.aspx';</script>");
        }
    }
}