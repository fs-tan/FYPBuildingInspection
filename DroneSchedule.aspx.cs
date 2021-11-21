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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var scheduleID = GridView1.SelectedRow.Cells[0].Text;
            Session["scheduleID"] = scheduleID;
        }

        protected void Edit_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("");
        }
    }
}