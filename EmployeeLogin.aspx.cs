using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABCSAMPLE
{
    public partial class EmployeeLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {


            string password = txtPassword.Text;
            string email = txtUserName.Text;



            try
            {
                using (SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\ABCSUPERMARKETS.mdf;Integrated Security=True")) // connection string to connect to database 
                {
                    connection.Open(); // opening the connection
                    SqlCommand comm = new SqlCommand("Select count(1) from Employees where Email = @Email and Password = @Password", connection);
                    SqlCommand cmd = new SqlCommand("Select EmployeesID from Employees where Email = @Email and Password = @Password", connection);
                    comm.Parameters.AddWithValue("@Email", email.Trim());
                    comm.Parameters.AddWithValue("@Password", password.Trim());
                    cmd.Parameters.AddWithValue("@Email", email.Trim());
                    cmd.Parameters.AddWithValue("@Password", password.Trim());



                    int count = Convert.ToInt32(comm.ExecuteScalar());
                    if (count == 1)
                    {
                        SqlDataReader reader = cmd.ExecuteReader();
                        
                            while (reader.Read())
                            {
                                lblLoginStatus.Text = "Access Granted";
                                Session["EmployeesID"] = reader["EmployeesID"].ToString();

                                Response.Redirect("AddFarmers.aspx");



                                //.Text = Request.Cookies["FarmerID"].Value


                            }



                        }
                        //
                        //mm.Show();

                    }

                
            }
            catch (Exception)
            {
                lblLoginStatus.Text = "Error with login";
            }





            /*foreach (Student item in ListHandler.StudentDetails)
            {
                if (password == item.Password && email == item.Email) //Checks to see what the user has entered is correect by going through the list and comparing user enterd values with values in the List
                {
                    this.Hide();
                    MessageBox.Show("Login Successful");
                    

                }
                else
                {
                    MessageBox.Show("Incorrect Details please try again"); // Meesage that will Pop Up to shw that user entered in incorrect details 
                }  
                
            } */
        }

    }
    }
