using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABCSAMPLE
{
    public partial class ViewProductsDataRange : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearchBetweenUserRange_Click(object sender, EventArgs e)
        {

            SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\ABCSUPERMARKETS.mdf;Integrated Security=True");

            connection.Open();
            SqlCommand command = new SqlCommand("Select ProductD,ProductName,ProductDescription,ProductPrice,DateSelected from Products where DateSelected Between @Student_Number'" + txtStartDate.Text + "'and'" + txtEndDate.Text + "'", connection);
            connection.Open();
            SqlDataAdapter sda = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            SqlDataReader sqlDataReader = command.ExecuteReader();

            if (sqlDataReader.Read())
            {

                GridViewProducts.DataSource = dt;
                GridViewProducts.DataBind();
                lblRangeStatus.Text = "Successful data range filter";

            }
            else {

                 lblRangeStatus.Text = "Unsuccessful data range filter as there are no records found";

            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewProducts.aspx");
        }

        protected void btnFilterDescriptionRange_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewProductsDescriptionRange.aspx");
        }
    }
}