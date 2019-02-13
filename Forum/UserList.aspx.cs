using System;
//using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
using System.Web.UI.WebControls;

namespace Forum
{
    public partial class UserList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int i = 1;
            TableRow rw;
            TableCell cel;
            LinkButton plink;

            SqlConnection SelConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnect"].ConnectionString);
            String Query1 = "SELECT (PSurname + PName + PPatronymic) as Name, CityName, Housing, Room, Arrival " +
                "FROM Cities c RIGHT JOIN Participants p ON c.CityID = p.CityID ORDER BY Name;";
            SqlCommand SelCommand = new SqlCommand(Query1, SelConnect);
            SelConnect.Open();
            SqlDataReader SelReader = SelCommand.ExecuteReader();
            string[] cols = new string[] { "Name", "CityName", "Housing", "Room", "Arrival" };
            while (SelReader.Read())
            {
                rw = new TableRow() { CssClass = "rw" };
                cel = new TableCell() { Text = i.ToString() };
                rw.Cells.Add(cel);
                plink = new LinkButton()
                { Text = SelReader[cols[0]].ToString(), ID = "User" + i.ToString(), PostBackUrl = "#"};
                cel = new TableCell();
                cel.Controls.Add(plink);
                rw.Cells.Add(cel);
                for (int h = 1; h < cols.Length; h++)
                {
                    cel = new TableCell() { Text = SelReader[cols[h]].ToString() };
                    if (h == 4) { if (cel.Text == "True") cel.Text = "да"; else cel.Text = "нет"; }
                    rw.Cells.Add(cel);
                }
                UserTable.Rows.Add(rw);
                i++;
            }
            SelReader.Close();
            SelConnect.Close();

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