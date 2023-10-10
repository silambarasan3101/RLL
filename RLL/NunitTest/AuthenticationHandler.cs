using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace RLL.NunitTest
{
    public class AuthenticationHandler
    {
        private readonly string connectionString;

        public AuthenticationHandler(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public bool AuthenticateAdmin(string username, string password, out string authenticatedUsername)
        {
            authenticatedUsername = null;
            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM AdminInfo WHERE UserName = @username AND Password = @password", con))
                    {
                        cmd.Parameters.AddWithValue("@username", username.Trim());
                        cmd.Parameters.AddWithValue("@password", password.Trim());

                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            if (dr.HasRows)
                            {
                                while (dr.Read())
                                {
                                    authenticatedUsername = dr.GetValue(1).ToString();
                                    return true;
                                }

                                return true;
                            }
                        }
                    }
                }
            }
            catch (Exception)
            {
                // Handle exceptions if needed
                return false;
            }

            return false;
        }
    }
}