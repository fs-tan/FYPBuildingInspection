using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuildingInspection
{
    public partial class Report_Select_ : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            var user = db.Users.SingleOrDefault(x => x.userID == int.Parse(Session["userID"].ToString()));
            var report = db.Reports.SingleOrDefault(x => x.reportID == int.Parse(Session["reportID"].ToString()));
            var result = db.InspectionResults.SingleOrDefault(x => x.reportID == int.Parse(Session["reportID"].ToString()));
            var schedule = db.FlightSchedules.SingleOrDefault(x => x.resultID == result.resultID);
            var flightInfo = db.FlightInfos.SingleOrDefault(x => x.flightInfoID == schedule.flightInfoID);
            var coordinate = db.Coordinates.SingleOrDefault(x => x.coordinatesID == flightInfo.coordinatesID);
            if (user != null)
            {
                userIDValue.Text = schedule.userID.ToString();
                reportIDValue.Text = report.reportID.ToString();
                reportDateValue.Text = report.date;
                reportTimeValue.Text = report.time;
                reportResultValue.Text = result.resultStatus;
                scheduleIDValue.Text = schedule.scheduleID.ToString();
                scheduleNameValue.Text = schedule.scheduleName;
                scheduleStatusValue.Text = schedule.status;
                flightInfoIDValue.Text = schedule.flightInfoID.ToString();
                flightInfoDateValue.Text = flightInfo.date.ToString();
                flightInfoTimeValue.Text = flightInfo.time.ToString();
                taskLocationLatitudeValue.Text = coordinate.latitude;
                taskLocationLongitudeValue.Text = coordinate.longitude;
            }
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Report.aspx");
        }
    }
}