using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace RLL.NunitTest
{
    public class CityDeleter
    {
        private readonly string connectionString;

        public CityDeleter(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public string DeleteCity(string cityName)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();

                    string query = "DELETE FROM Cities WHERE CityName = @CityName";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@CityName", cityName);

                    int rowsAffected = cmd.ExecuteNonQuery();

                    con.Close();

                    return rowsAffected > 0 ? "City deleted successfully." : "City not found or not deleted.";
                }
            }
            catch (Exception)
            {
                // Handle exceptions if needed
                return "Error occurred during city deletion.";
            }
        }
    }
}