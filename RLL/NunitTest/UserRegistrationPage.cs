using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace RLL.NunitTest
{
    public class UserRegistrationPage
    {
        private readonly string connectionString;

        public string RedirectedPage { get; private set; }

        public UserRegistrationPage(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public string RegisterUser(string firstName, string lastName, string contactNumber, string email, DateTime dob, string userId, string password, string confirmPassword)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("INSERT INTO UserRegistration (FirstName, LastName, ContactNumber, EmailID, DateOfBirth, UserId, Password, ConfirmPassword) VALUES (@fn, @ln, @contact, @emailId, @dob, @userId, @pwd, @cpwd)", con);
                    cmd.Parameters.AddWithValue("@fn", firstName);
                    cmd.Parameters.AddWithValue("@ln", lastName);
                    cmd.Parameters.AddWithValue("@contact", contactNumber);
                    cmd.Parameters.AddWithValue("@emailId", email);
                    cmd.Parameters.AddWithValue("@dob", dob);
                    cmd.Parameters.AddWithValue("@userId", userId);
                    cmd.Parameters.AddWithValue("@pwd", password);
                    cmd.Parameters.AddWithValue("@cpwd", confirmPassword);

                    cmd.ExecuteNonQuery();
                    con.Close();

                    RedirectedPage = "UserLogin.aspx";
                    return "User Registration Successful";
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions if needed
                return ex.Message;
            }
        }
    }
}