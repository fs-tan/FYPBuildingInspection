using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuildingInspection
{
    public partial class AddDrone : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void continue_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                using (DataClasses1DataContext db = new DataClasses1DataContext())
                {
                    DroneInfo d = db.DroneInfos.SingleOrDefault(x => x.droneName == droneName.Text);
                    if (d == null) //if found, display error message
                    {
                        if (currentLat != null)
                        {
                            if (currentLng != null)
                            {
                                DroneInfo newDrone = new DroneInfo
                                {
                                    droneName = droneName.Text,
                                    latitude = currentLat.Text,
                                    longitude = currentLng.Text,
                                    battery = 100
                                };
                                db.DroneInfos.InsertOnSubmit(newDrone);
                                db.SubmitChanges();
                            }
                            else
                            {
                                DroneInfo newDrone = new DroneInfo
                                {
                                    droneName = droneName.Text,
                                    latitude = currentLat.Text,
                                    longitude = "",
                                    battery = 100
                                };
                                db.DroneInfos.InsertOnSubmit(newDrone);
                                db.SubmitChanges();
                            }
                        }
                        else
                        {
                            if (currentLng != null)
                            {
                                DroneInfo newDrone = new DroneInfo
                                {
                                    droneName = droneName.Text,
                                    latitude = "",
                                    longitude = currentLng.Text,
                                    battery = 100
                                };
                                db.DroneInfos.InsertOnSubmit(newDrone);
                                db.SubmitChanges();
                            }
                            else
                            {
                                DroneInfo newDrone = new DroneInfo
                                {
                                    droneName = droneName.Text,
                                    latitude = "",
                                    longitude = "",
                                    battery = 100
                                };
                                db.DroneInfos.InsertOnSubmit(newDrone);
                                db.SubmitChanges();
                            }
                        }
                        var user = db.Users.SingleOrDefault(x => x.userID == int.Parse(Session["userID"].ToString()));

                        if (user.droneID == null)
                        {
                            Session["passDroneName"] = droneName.Text;
                        }
                        Response.Write("<script language='javascript'>window.alert('New Drone created!');window.location='DroneInfo.aspx';</script>");

                    }
                    else
                    {
                        droneNameMessage.Text = ("Drone Name Existed !");
                    }
                }
            }
        }
    }
}