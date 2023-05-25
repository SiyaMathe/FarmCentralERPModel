using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABCSAMPLE
{


   
    public partial class FarmerLogin : System.Web.UI.Page
    {

        HttpCookie FarmerCookie;

        public HttpCookie FarmerCookie1 { get => FarmerCookie; set => FarmerCookie = value; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        private void SetSessionInfo(string Id)
        {

            Session["FarmerID"] = Id;

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            string password = txtPassword.Text;
            string email = txtUserName.Text;



            try
            {
                using (SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\ABCSUPERMARKETS.mdf;Integrated Security=True"))
                { // connection string to connect to database 

                    connection.Open(); // opening the connection
                    SqlCommand comm = new SqlCommand("Select count(1) from Farmers where Email = @Email and Password = @Password", connection);
                    SqlCommand cmd = new SqlCommand("Select FarmerID from Farmers where Email = @Email and Password = @Password", connection);
                    
                    
                    comm.Parameters.AddWithValue("@Email", email.Trim());
                    comm.Parameters.AddWithValue("@Password", password.Trim());
                    cmd.Parameters.AddWithValue("@Email", email.Trim());
                    cmd.Parameters.AddWithValue("@Password", password.Trim());

                    int count = Convert.ToInt32(comm.ExecuteScalar());
                   // cmd.ExecuteReader();

                    Console.WriteLine("This is the cookie value" + count);

                    if (count == 1)

                    {

                        lblLoginStatus.Text = "Access Granted";
                        ListHandler.Users.Clear();

                        SqlDataReader reader = cmd.ExecuteReader();


                            while (reader.Read())
                            {


                                Session["FarmerID"]= reader["FarmerID"].ToString();

                                SetSessionInfo(reader["FarmerID"].ToString());




                                lblLoginStatus.Text = "Access Granted";
                                ListHandler.Users.Clear();
                                ActiveUsers UD = new ActiveUsers((reader["FarmerID"].ToString()));
                                ListHandler.Users.Add(UD);
                                //FarmerCookie1.Value = reader["FarmerID"].ToString();
                                HttpCookie FarmerCookie = new HttpCookie("FarmerID");
                                FarmerCookie.Value = ((reader["FarmerID"].ToString()));
                                // FarmerCookie.Expires = DateTime.Now.AddHours(1);
                                Response.Cookies.Add(FarmerCookie);
                                Response.Redirect("AddProducts.aspx");

                                Console.WriteLine("This is the value" + Response.Cookies["FarmerID"].Value);


                                //.Text = Request.Cookies["FarmerID"].Value


                            }
                            //  Response.Redirect("AddProducts.aspx");
                        }

                    //Session["FarmerID"] = reader["FarmerID"].ToString();

                    Response.Redirect("AddProducts.aspx");

                    }
                    
                
                
            }
            catch (Exception)
            {
                lblLoginStatus.Text="Error with login";
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