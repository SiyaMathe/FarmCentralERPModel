using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABCSAMPLE
{
    public partial class AddProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPopulate_Click(object sender, EventArgs e)
        {
            FarmerLogin obj = new FarmerLogin();

            string product_Name = txtProductName.Text;
            string product_Description = txtProdDescription.Text;
           int pro = Int32.Parse(txtProdPrice.Text.Trim());
            //int farmerID = Convert.ToInt32(Request.Cookies["FarmerID"].Value);
           // int sample = Convert.ToInt32(obj.FarmerCookie1.Value);

            int ot = Convert.ToInt32(Session["FarmerID"].ToString());


            using (SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\ABCSUPERMARKETS.mdf;Integrated Security=True"))
            {
                connection.Open();
                SqlCommand command = new SqlCommand("INSERT INTO Products VALUES (@ProductName,@ProductDescription,@ProductPrice,@FarmerID,@DateSelected)", connection);
                {

                    command.Parameters.AddWithValue("@ProductName", product_Name.Trim());
                    command.Parameters.AddWithValue("@ProductDescription", product_Description.Trim());
                    command.Parameters.AddWithValue("@ProductPrice", pro);
                    command.Parameters.AddWithValue("@FarmerID", ot);
                    command.Parameters.AddWithValue("@DateSelected", UserCalendarDate.SelectedDate);
                   

                    SqlDataAdapter adapter = new SqlDataAdapter();
                    adapter.InsertCommand = command;

                    adapter.InsertCommand.ExecuteNonQuery();

                    adapter.Dispose();

                }







            }



        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("FirstPage.aspx");
        }
    }
}