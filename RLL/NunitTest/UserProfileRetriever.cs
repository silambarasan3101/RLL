using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace RLL.NunitTest
{
    public class UserProfileRetriever
    {
        private readonly string connectionString;

        public string FirstName { get; private set; }
        public string LastName { get; private set; }
        public string ContactNumber { get; private set; }
        public string Email { get; private set; }
        public string DOB { get; private set; }
        public string UserId { get; private set; }
        public string Password { get; private set; }

        public UserProfileRetriever(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public void RetrieveUserProfile(string userId)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();

                    string query = "SELECT FirstName, LastName, ContactNumber, EmailID, DateOfBirth, UserId, Password FROM UserRegistration WHERE UserId = @UserId";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@UserId", userId);

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();

                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        FirstName = dt.Rows[0]["FirstName"].ToString();
                        LastName = dt.Rows[0]["LastName"].ToString();
                        ContactNumber = dt.Rows[0]["ContactNumber"].ToString();
                        Email = dt.Rows[0]["EmailID"].ToString();
                        DOB = dt.Rows[0]["DateOfBirth"].ToString();
                        UserId = dt.Rows[0]["UserId"].ToString();
                        Password = dt.Rows[0]["Password"].ToString();
                    }

                    con.Close();
                }
            }
            catch (Exception)
            {
                // Handle exceptions if needed
                // For simplicity, this example does not handle exceptions
            }
        }
    }
}