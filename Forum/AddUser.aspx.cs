using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Forum
{
    public partial class AddUser : System.Web.UI.Page
    {
        SqlConnection DBConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnect"].ConnectionString);

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

            if (!IsPostBack)
            {
                //формируем список городов в выпадающем списке CityID
                String CitiesQuery = "Select * FROM Cities ORDER BY CityName;";
                SqlCommand CitiesCommand = new SqlCommand(CitiesQuery, DBConnect);
                DBConnect.Open();
                SqlDataReader CitiesReader = CitiesCommand.ExecuteReader();
                CityDropList.Items.Clear();
                ListItem l = new ListItem() { Text = "---", Value = "-1" };
                CityDropList.Items.Add(l);
                while (CitiesReader.Read())
                {
                    l = new ListItem();
                    l.Text = CitiesReader["CityName"].ToString();
                    l.Value = CitiesReader["CityID"].ToString();
                    CityDropList.Items.Add(l);
                }
                DBConnect.Close();

                //список для пола
                l = new ListItem() { Text = "мужской", Value = "1" };
                Gender.Items.Add(l);
                l = new ListItem() { Text = "женский", Value = "0" };
                Gender.Items.Add(l);

                //список для прибытия
                l = new ListItem() { Text = "да", Value = "1" };
                Arrival.Items.Add(l);
                l = new ListItem() { Text = "нет", Value = "0" };
                Arrival.Items.Add(l);
            }

            //скрываем или показываем поле для ввода нового города
            if (CityCheckBox.Checked)
            {
                NewCityLabel.Visible = true;
                NewCityName.Visible = true;
                OldCityLabel.Visible = false;
                CityDropList.Visible = false;
            }
            else
            {
                NewCityLabel.Visible = false;
                NewCityName.Visible = false;
                OldCityLabel.Visible = true;
                CityDropList.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {       
            //добавляем запись
            String InsQuery = "INSERT Participants (PSurname, PName, PPatronymic, BirthDate, Gender, PassportNum, PassDate, PassIssue, PPhoneNumber, PEmail, " +
                "SocialNetworks, CityID, Leader, OrgName, RelativeName, Relationship, RelativeContact, MedContr, Housing, Room, Squad, Arrival) VALUES (" +
                "@PSurname, @PName, @PPatronymic, @BirthDate, @Gender, @PassportNum, @PassDate, @PassIssue, @PPhoneNumber, @PEmail, " +
                "@SocialNetworks, @CityID, @Leader, @OrgName, @RelativeName, @Relationship, @RelativeContact, @MedContr, @Housing, @Room, @Squad, @Arrival);";
            SqlCommand InsCommand = new SqlCommand(InsQuery, DBConnect);
            InsCommand.Parameters.AddWithValue("@PSurname", PSurname.Text);
            InsCommand.Parameters.AddWithValue("@PName", PName.Text);
            InsCommand.Parameters.AddWithValue("@PPatronymic", PPatronymic.Text);
            InsCommand.Parameters.AddWithValue("@BirthDate", BirthDate.Text);
            InsCommand.Parameters.AddWithValue("@Gender", Gender.SelectedValue);
            InsCommand.Parameters.AddWithValue("@PassportNum", PassportNum.Text);
            InsCommand.Parameters.AddWithValue("@PassDate", PassDate.Text);
            InsCommand.Parameters.AddWithValue("@PassIssue", PassIssue.Text);
            InsCommand.Parameters.AddWithValue("@PPhoneNumber", PPhoneNumber.Text);
            InsCommand.Parameters.AddWithValue("@PEmail", PEmail.Text);
            InsCommand.Parameters.AddWithValue("@SocialNetworks", SocialNetworks.Text);
            string x = CityDropList.SelectedValue;
            if (!CityCheckBox.Checked)
            {
                if (CityDropList.SelectedValue == "-1") InsCommand.Parameters.AddWithValue("@CityID", System.DBNull.Value);
                else InsCommand.Parameters.AddWithValue("@CityID", CityDropList.SelectedValue);
            }
            else
            {
                //используем хранимую процедуру для добавления города
                SqlCommand CityCommand = new SqlCommand("AddCity", DBConnect);
                CityCommand.CommandType = System.Data.CommandType.StoredProcedure;
                CityCommand.Parameters.AddWithValue("@CityName", NewCityName.Text);
                CityCommand.Parameters.Add(new SqlParameter("@CityID", System.Data.SqlDbType.SmallInt));
                CityCommand.Parameters["@CityID"].Direction = System.Data.ParameterDirection.Output;
                DBConnect.Open();
                CityCommand.ExecuteNonQuery();
                DBConnect.Close();
                InsCommand.Parameters.AddWithValue("@CityID", CityCommand.Parameters["@CityID"].Value.ToString());
            }
            InsCommand.Parameters.AddWithValue("@Leader", Leader.Text);
            InsCommand.Parameters.AddWithValue("@OrgName", OrgName.Text);
            InsCommand.Parameters.AddWithValue("@RelativeName", RelativeName.Text);
            InsCommand.Parameters.AddWithValue("@Relationship", Relationship.Text);
            InsCommand.Parameters.AddWithValue("@RelativeContact", RelativeContact.Text);
            InsCommand.Parameters.AddWithValue("@MedContr", MedContr.Text);
            InsCommand.Parameters.AddWithValue("@Housing", Housing.Text);
            InsCommand.Parameters.AddWithValue("@Room", Room.Text);
            InsCommand.Parameters.AddWithValue("@Squad", Squad.Text);
            InsCommand.Parameters.AddWithValue("@Arrival", Arrival.SelectedValue);
            DBConnect.Open();
            InsCommand.ExecuteNonQuery();
            DBConnect.Close();
        }

    }
}