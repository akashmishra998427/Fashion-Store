using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce_Akash_Store
{
    public partial class Signup : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                string name, email, number, password, confirm_password, Add_state, Add_city, pincode;
                name = TextBox1.Text;
                email = TextBox2.Text;
                number = TextBox3.Text;
                password = TextBox4.Text;
                confirm_password = TextBox5.Text;
                Add_state = state.SelectedItem.Text;
                Add_city = city.SelectedItem.Text;
                pincode = TextBox6.Text;

                string insret_query = "insert into signup(cname,email,phone_number,fpass,cpassword,address_state,address_city,pincode) values('" + name + "','" + email + "','" + number + "','" + password + "','" + confirm_password + "','" + Add_state + "','" + Add_city + "','" + pincode + "')";
                con.Open();
                SqlCommand cmd1 = new SqlCommand(insret_query, con);
                int i = cmd1.ExecuteNonQuery();
                //if (i > 0)
                //{
                //    Response.Write("record inserted");
                //}
                //else
                //{
                //    Response.Write("having some issue to intract with database");
                //}

            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

            finally
            {
                con.Close();
            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string state_name;
            state_name = state.SelectedItem.Text;

            if (state_name.Equals("Select State"))
            {
                city.Items.Clear();
            }

            else if (state_name.Equals("Punjab"))
            {
                city.Items.Clear();
                city.Items.Add("Amritsar");
                city.Items.Add("Ludhiana");

                city.Items.Add("Jalandhar");

            }
            else if (state_name.Equals("Delhi"))
            {
                city.Items.Clear();
                city.Items.Add("New Delh");
                city.Items.Add("South Delhi");

                city.Items.Add("West Delhi");

            }


            else if (state_name.Equals("Bihar"))
            {
                city.Items.Clear();
                city.Items.Add("Patna");
                city.Items.Add("Bhagalpur");

                city.Items.Add("Muzaffarpur");

            }
            else if (state_name.Equals("Haryana"))
            {
                city.Items.Clear();
                city.Items.Add("Gurgaon (Gurugram)");
                city.Items.Add("Faridabad");

                city.Items.Add("Panchkula");

            }
            else if (state_name.Equals("Uttar Pradesh"))
            {
                city.Items.Clear();
                city.Items.Add("Lucknow");
                city.Items.Add("Kanpur");

                city.Items.Add("Varanasi ");
                city.Items.Add("Basti");
                city.Items.Add("Ayodhya");

                city.Items.Add("Gonda ");

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signin.aspx");
        }
    }
}
    
