using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuildingInspection
{
    public partial class DroneSchedule1 : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Edit_OnClick(object sender, EventArgs e)
        {
            var edit = (LinkButton)sender;
            var index = edit.CommandArgument.ToString();
            Session["scheduleID"] = index;

            Response.Redirect("ChangeDroneSchedule.aspx");
        }

        protected void newSchedule_Click(object sender, EventArgs e)
        {
            Response.Redirect("DroneSchedule(DateTime).aspx");
        }

        protected void Select_OnClick(object sender, EventArgs e)
        {
            var select = (LinkButton)sender;
            var index = select.CommandArgument.ToString();
            Session["scheduleID"] = index;

            Response.Redirect("DroneSchedule(Select).aspx");
        }

        protected void Delete_OnClick(object sender, EventArgs e)
        {
            var select = (LinkButton)sender;
            var index = select.CommandArgument.ToString();

            var schedule = db.FlightSchedules.SingleOrDefault(x => x.scheduleID == int.Parse(index));
            var result = db.InspectionResults.SingleOrDefault(x => x.resultID == schedule.resultID);
            var report = db.Reports.SingleOrDefault(x => x.reportID == result.reportID);

            db.GetTable<FlightSchedule>().DeleteOnSubmit(schedule);
            db.SubmitChanges();

            var scheduleList = db.FlightSchedules; 
            db.Refresh(System.Data.Linq.RefreshMode.KeepChanges, scheduleList);

            db.GetTable<InspectionResult>().DeleteOnSubmit(result);
            db.SubmitChanges(); deleteReport(report);

            db.GetTable<Report>().DeleteOnSubmit(report);
            db.SubmitChanges();
        }

        protected void deleteResult(InspectionResult result)
        {
            
        }

        protected void deleteReport(Report report)
        {
            
        }
    }
}