using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABCSAMPLE
{
    public partial class AddFarmers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnPopulate_Click(object sender, EventArgs e)
        {

            string farmerName = txtFarmerName.Text.Trim();
            string farmerCompany = txtFarmerCompany.Text.Trim();
            string contactNo = txtContactNumber.Text.Trim();
            string email = txtEmail.Text.Trim();
            string Password = txtPassword.Text.Trim();

            using (SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\ABCSUPERMARKETS.mdf;Integrated Security=True"))
            {
                connection.Open();
                SqlCommand command = new SqlCommand("INSERT INTO Farmers VALUES (@FarmerName,@FarmerCompany,@ContactNumber,@Email,@Password);", connection);
                {

                    command.Parameters.AddWithValue("@FarmerName", farmerName);
                    command.Parameters.AddWithValue("@FarmerCompany", farmerCompany);
                    command.Parameters.AddWithValue("@ContactNumber", contactNo);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Password", Password);

                    SqlDataAdapter adapter = new SqlDataAdapter();
                    adapter.InsertCommand = command;

                    adapter.InsertCommand.ExecuteNonQuery();

                    adapter.Dispose();

                }




            }




        }

        protected void btnViewProducts_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewProducts.aspx");
        }
    }
}