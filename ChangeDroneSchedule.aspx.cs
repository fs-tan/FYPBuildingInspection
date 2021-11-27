using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuildingInspection
{
    public partial class ChangeDroneSchedule : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            var user = db.Users.SingleOrDefault(x => x.userID == int.Parse(Session["userID"].ToString()));
            var schedule = db.FlightSchedules.SingleOrDefault(x => x.scheduleID == int.Parse(Session["scheduleID"].ToString()));
            if (user != null)
            {
                scheduleName.Attributes["placeholder"] = schedule.scheduleName;
                scheduleStatus.Attributes["placeholder"] = schedule.status;
                flightInfo.Attributes["placeholder"] = schedule.flightInfoID.ToString();
                resultID.Attributes["placeholder"] = schedule.resultID.ToString();
                userID.Attributes["placeholder"] = schedule.userID.ToString();
                droneID.Attributes["placeholder"] = schedule.droneID.ToString();
            }
        }

        protected void continue_Click(object sender, EventArgs e)
        {
            var user = db.Users.SingleOrDefault(x => x.userID == int.Parse(Session["userID"].ToString()));
            var schedule = db.FlightSchedules.SingleOrDefault(x => x.scheduleID == int.Parse(Session["scheduleID"].ToString()));
            schedule.scheduleName = scheduleName.Text;
            schedule.status = scheduleStatus.Text;
            db.SubmitChanges();
            Response.Write("<script language='javascript'>window.alert('Congratulations. You have updated your drone schedule info.');;window.location='DroneSchedule.aspx';</script>");
        }
    }
}