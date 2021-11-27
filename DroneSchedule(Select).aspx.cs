using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuildingInspection
{
    public partial class DroneSchedule_Select_ : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            var user = db.Users.SingleOrDefault(x => x.userID == int.Parse(Session["userID"].ToString()));
            var schedule = db.FlightSchedules.SingleOrDefault(x => x.scheduleID == int.Parse(Session["scheduleID"].ToString()));
            var flightInfo = db.FlightInfos.SingleOrDefault(x => x.flightInfoID == schedule.flightInfoID);
            var coordinate = db.Coordinates.SingleOrDefault(x => x.coordinatesID == flightInfo.coordinatesID);
            if (user != null)
            {
                scheduleIDValue.Text = schedule.scheduleID.ToString();
                scheduleNameValue.Text = schedule.scheduleName;
                scheduleStatusValue.Text = schedule.status;
                resultIDValue.Text = schedule.resultID.ToString();
                userIDValue.Text = schedule.userID.ToString();
                droneIDValue.Text = schedule.droneID.ToString();
                flightInfoIDValue.Text = schedule.flightInfoID.ToString();
                flightInfoDateValue.Text = flightInfo.date.ToString();
                flightInfoTimeValue.Text = flightInfo.time.ToString();
                taskLocationLatitudeValue.Text = coordinate.latitude;
                taskLocationLongitudeValue.Text = coordinate.longitude;
            }
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangeDroneSchedule.aspx");
        }

        protected void startTask_Click(object sender, EventArgs e)
        {
            var schedule = db.FlightSchedules.SingleOrDefault(x => x.scheduleID == int.Parse(Session["scheduleID"].ToString()));

            Session["resultID"] = schedule.resultID;
            Response.Redirect("Dashboard.aspx");
        }
    }
}