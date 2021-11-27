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
    }
}