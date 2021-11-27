using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BuildingInspection
{
    public partial class Dashboard : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            var schedule = db.FlightSchedules.SingleOrDefault(x => x.scheduleID == int.Parse(Session["scheduleID"].ToString()));
            var result = db.InspectionResults.SingleOrDefault(x => x.resultID == int.Parse(Session["resultID"].ToString()));

            scheduleIDValue.Text = schedule.scheduleID.ToString();
            scheduleNameValue.Text = schedule.scheduleName;
            resultIDValue.Text = result.resultID.ToString();
            statusValue.Text = result.resultStatus;
            armedValue.Text = result.armed;
            modeValue.Text = result.mode;
            GridView1.DataBind();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            var result = db.InspectionResults.SingleOrDefault(x => x.resultID == int.Parse(Session["resultID"].ToString()));
            var att = Convert.ToDouble(result.attitude);
            var lat = Convert.ToDouble(result.latitude);
            var lng = Convert.ToDouble(result.longitude);

            statusValue.Text = result.resultStatus;
            armedValue.Text = result.armed;
            modeValue.Text = result.mode;

            if (att == 0)
            {
                att += 1;
                result.resultStatus = "Start";
                result.armed = "armed";
                result.attitude = att.ToString();
                result.mode = "Guided";
                db.SubmitChanges();
            }
            else if(att >= 1 && att <= 5)
            {
                att += 1;
                lat += 0.01;
                lng += 0.01;
                result.attitude = att.ToString();
                result.latitude = lat.ToString();
                result.longitude = lng.ToString();
                db.SubmitChanges();
            }
            else if(att >= 5 && att <= 10)
            {
                att += 1;
                lat -= 0.01;
                lng -= 0.01;
                result.attitude = att.ToString();
                result.latitude = lat.ToString();
                result.longitude = lng.ToString();
                result.mode = "RTL";
                db.SubmitChanges();
            }
            else
            {
                att = -1;
                result.resultStatus = "End";
                result.armed = "disarmed";
                result.attitude = att.ToString();
                result.mode = "Stabilize";
                db.SubmitChanges();

                var report = db.Reports.SingleOrDefault(x => x.reportID == result.reportID);
                var schedule = db.FlightSchedules.SingleOrDefault(x => x.scheduleID == int.Parse(Session["scheduleID"].ToString()));

                report.date = DateTime.Now.ToShortDateString();
                report.time = DateTime.Now.ToLongTimeString();
                schedule.status = "Success";
                db.SubmitChanges();
            }

            GridView1.DataBind();
        }
    }
}