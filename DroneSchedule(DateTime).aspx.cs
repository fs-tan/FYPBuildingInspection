using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuildingInspection
{
    public partial class DroneSchedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime now = DateTime.Today;
            Session["selectedDate"] = now.ToShortDateString();

            DateTime time = DateTime.Now;
            var n = DateTime.ParseExact(now.ToShortDateString() + " 08:00:00", "dd/MM/yyyy HH:mm:ss", System.Globalization.CultureInfo.InvariantCulture);


            for (int i = 0; i < 16; i++)
            {
                if (time < n)
                    timeDDL.Items.Add(n.ToString("HH:mm"));
                n = n.AddMinutes(30);
            }

            compareDate(now);
        }

        protected void calendar_DayRender(object sender, DayRenderEventArgs e)
        {
            DateTime minDate = DateTime.Today;
            DateTime date = calendar.SelectedDate;

            if (e.Day.Date < minDate)
            {
                e.Day.IsSelectable = false;
            }

            if (e.Day.Date.Equals(date))
            {
                e.Day.IsSelectable = false;
            }
        }



        protected void calendar_SelectionChanged(object sender, EventArgs e)
        {
            timeDDL.Items.Clear();
            addListItem();
            nextBtn.Enabled = true;
            DateTime date = calendar.SelectedDate;

            DateTime time = DateTime.Now;
            var n = DateTime.ParseExact(date.ToShortDateString() + " 08:00:00", "dd/MM/yyyy HH:mm:ss", System.Globalization.CultureInfo.InvariantCulture);

            for (int i = 0; i < 16; i++)
            {
                if (time < n)
                    timeDDL.Items.Add(n.ToString("HH:mm"));
                n = n.AddMinutes(30);
            }

            if (timeDDL.Items.Count == 0)
                nextBtn.Enabled = false;

            compareDate(date);
        }

        private void addListItem()
        {
            for (int i = 0; i < timeDDL.Items.Count; i++)
            {
                timeDDL.Items[i].Enabled = true;
            }
        }


        private void compareDate(DateTime dateSelected)
        {
            String city = cityDDL.SelectedItem.Text;
            string url = "http://api.openweathermap.org/data/2.5/forecast/daily?q=" + city + "&units=metric&cnt=7&appid=5cd5cf01773ce92e5663d2b393f7a0f2";
            using (WebClient client = new WebClient())
            {
                string json = client.DownloadString(url);
                WeatherInfo weatherInfo = (new JavaScriptSerializer()).Deserialize<WeatherInfo>(json);

                DateTime now = DateTime.Today;
                int duration = (dateSelected - now).Days;

                if (duration < 7)
                {
                    string img = weatherInfo.list[duration].weather[0].icon;
                    string img2 = "";

                    if (img.Equals("01d") || img.Equals("01n"))
                    {
                        img2 = "uploads/003-sun.png";
                    }
                    else if (img.Equals("02d") || img.Equals("02n"))
                    {
                        img2 = "uploads/002-weather.png";
                    }
                    else if (img.Equals("03d") || img.Equals("03n"))
                    {
                        img2 = "uploads/005-cloud.png";
                    }
                    else if (img.Equals("04d") || img.Equals("04n"))
                    {
                        img2 = "uploads/004-cloudy.png";
                    }
                    else if (img.Equals("09d") || img.Equals("09n"))
                    {
                        img2 = "uploads/006-rain.png";
                    }
                    else if (img.Equals("10d") || img.Equals("10n"))
                    {
                        img2 = "uploads/007-storm.png";
                    }
                    else if (img.Equals("11d") || img.Equals("11n"))
                    {
                        img2 = "uploads/008-storm-1.png";
                    }
                    else if (img.Equals("13d") || img.Equals("13n"))
                    {
                        img2 = "uploads/010-snowflake.png";
                    }
                    else if (img.Equals("50d") || img.Equals("50n"))
                    {
                        img2 = "uploads/009-fog.png";
                    }

                    date.Text = dateSelected.ToString("dd/MM/yyyy");
                    day.Text = dateSelected.DayOfWeek.ToString();
                    ImageButton1.ImageUrl = img2.ToString();

                }
                else
                {
                    date.Text = dateSelected.ToString("dd/MM/yyyy");
                    day.Text = dateSelected.DayOfWeek.ToString();
                    ImageButton1.ImageUrl = "img/002-weather.png";
                }

            }
        }

        protected void nextBtn_Click(object sender, EventArgs e)
        {
            DateTime dateSelected = calendar.SelectedDate;

            Session["selectedDate"] = dateSelected.ToShortDateString();
            Session["selectedTime"] = timeDDL.SelectedItem.Value;
            Response.Redirect("DroneSchedule(TaskLocation).aspx");
        }

        public class WeatherInfo
        {
            public City city { get; set; }
            public List<List> list { get; set; }
        }

        public class City
        {
            public string name { get; set; }
            public string country { get; set; }
        }

        public class Weather
        {
            public string description { get; set; }
            public string icon { get; set; }
        }

        public class List
        {
            public List<Weather> weather { get; set; }
        }
    }
}