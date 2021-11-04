using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
using System.Web.UI.WebControls;

namespace BuildingInspection
{
    public partial class DroneInfo1 : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            var user = db.Users.SingleOrDefault(x => x.userID == int.Parse(Session["userID"].ToString()));
            if(user != null)
            {

                if (Session["passDroneName"] != null)
                {
                    var droneName = db.DroneInfos.SingleOrDefault(x => x.droneName == (String)Session["passDroneName"]);
                    user.droneID = droneName.droneID;
                    db.SubmitChanges();
                }

                var droneID = db.DroneInfos.SingleOrDefault(x => x.droneID == user.droneID);
                if (droneID != null)
                {
                    dID.Text = droneID.droneID.ToString();
                    dName.Text = droneID.droneName;
                    dLat.Text = droneID.latitude;
                    dLng.Text = droneID.longitude;
                }
                else
                {
                    Response.Write("<script language='javascript'>window.alert('You are not having a drone yet, please add a drone');window.location='AddDrone.aspx';</script>");
                }
            }
        }
    }
}