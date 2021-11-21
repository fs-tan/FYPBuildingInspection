using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuildingInspection
{
    public partial class DroneSchedule_TaskLocation_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                using (DataClasses1DataContext db = new DataClasses1DataContext())
                {
                    var taskLatValue = int.Parse(lat.Text);
                    var taskLngValue = int.Parse(lng.Text);
                    if (taskLatValue <= 90 || taskLatValue >= -90)
                    {
                        latMessage.Text = "";

                        if (taskLngValue <= 180 || taskLngValue >= -180)
                        {
                            lngMessage.Text = "";

                            Coordinate c = new Coordinate
                            {
                                latitude = taskLatValue.ToString(),
                                longitude = taskLngValue.ToString()
                            };
                            db.Coordinates.InsertOnSubmit(c);
                            db.SubmitChanges();

                            if (c != null)
                            {
                                FlightInfo f = new FlightInfo
                                {
                                    date = DateTime.Parse(Session["selectedDate"].ToString()),
                                    time = DateTime.Parse(Session["selectedTime"].ToString()),
                                    coordinatesID = c.coordinatesID
                                };
                                db.FlightInfos.InsertOnSubmit(f);
                                db.SubmitChanges();

                                Report r = new Report
                                {
                                    reportName = scheduleName.Text + "(" + Session["selectedDate"].ToString() + ")",
                                    date = DateTime.Parse(Session["selectedDate"].ToString()),
                                    time = DateTime.Parse(Session["selectedTime"].ToString())
                                };
                                db.Reports.InsertOnSubmit(r);
                                db.SubmitChanges();

                                if (r != null)
                                {
                                    InspectionResult ir = new InspectionResult
                                    {
                                        resultStatus = "Pending",
                                        reportID = r.reportID
                                    };
                                    db.InspectionResults.InsertOnSubmit(ir);
                                    db.SubmitChanges();

                                    User u = db.Users.SingleOrDefault(x => x.userID == int.Parse(Session["userID"].ToString()));

                                    if (f != null && ir != null)
                                    {
                                        FlightSchedule fs = new FlightSchedule
                                        {
                                            scheduleName = scheduleName.Text,
                                            status = "Pending",
                                            flightInfoID = f.flightInfoID,
                                            resultID = ir.resultID,
                                            userID = u.userID,
                                            droneID = u.droneID
                                        };
                                        db.FlightSchedules.InsertOnSubmit(fs);
                                        db.SubmitChanges();
                                    }
                                }
                            }
                            Response.Write("<script language='javascript'>window.alert('Congratulations! New drone schedule has been created successfully!');window.location='Profile.aspx';</script>");
                        }
                        else
                        {
                            lngMessage.Text = ("Task Longitude value not valid!");
                        }
                    }
                    else
                    {
                        latMessage.Text = ("Task Latitude value not valid!");
                    }
                         
                }
            }
            
        }
    }
}