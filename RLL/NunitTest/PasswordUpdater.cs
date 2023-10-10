using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace RLL.NunitTest
{
    public class PasswordUpdater
    {
        private readonly string connectionString;

        public PasswordUpdater(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public bool UpdatePassword(string userId, string contactNumber, string newPassword)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("UPDATE UserRegistration SET Password = @newPassword WHERE UserId = @userId AND ContactNumber = @contactNumber", con);

                    cmd.Parameters.AddWithValue("@newPassword", newPassword);
                    cmd.Parameters.AddWithValue("@userId", userId);
                    cmd.Parameters.AddWithValue("@contactNumber", contactNumber);

                    int affectedRows = cmd.ExecuteNonQuery();

                    con.Close();

                    return affectedRows > 0;
                }
            }
            catch (Exception)
            {
                // Handle exceptions if needed
                return false;
            }
        }
   
    }
}