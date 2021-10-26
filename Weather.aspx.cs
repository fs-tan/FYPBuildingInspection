using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuildingInspection
{
    public partial class Weather1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string MySrc()
        {
            var city1 = regionSelector.Value;
            if (city1 == "")
            {
                city1 = "kuala+lumpur.js";
            }
            var url1 = "https://www.weatherwx.com/weather-js/my/" + city1;
            return url1;
        }
        protected void btnChangeRegion_Click(object sender, EventArgs e)
        {
            
            
        }
    }
}