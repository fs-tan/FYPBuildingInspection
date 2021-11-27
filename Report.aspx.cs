using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuildingInspection
{
    public partial class Report1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Select_OnClick(object sender, EventArgs e)
        {
            var select = (LinkButton)sender;
            var index = select.CommandArgument.ToString();
            Session["reportID"] = index;

            Response.Redirect("Report(Select).aspx");
        }
    }
}