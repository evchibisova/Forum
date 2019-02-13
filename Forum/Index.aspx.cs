using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Forum
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // подсчет статистики
            DateTime now = DateTime.Today, x = new DateTime(2018, 4, 1);
            int range = ((TimeSpan)(x - now)).Days;
            Label1.Text = range.ToString();
            string d = "дней";
            if (!(range % 100 >= 11 && range % 100 <= 14))
            { if (range % 10 == 1) { d = "день"; } else if (range % 10 >= 2 && range % 10 <= 4) { d = "дня"; } }
            SubLabel11.Text = d + " до мероприятия";

        }
    }
}