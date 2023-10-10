using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RLL
{
    public partial class DeletePlaces : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] != "admin")
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(conStr);

            try
            {
                con.Open();

                // Get the CityName from TextBox1.Text (assuming TextBox1 contains the CityName you want to delete)
                string CityPlace = TextBox1.Text;

                // Construct the SQL query with a parameterized query to prevent SQL injection
                string query = "DELETE FROM CityPlaces WHERE CityPlace = @CityPlace";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@CityPlace", CityPlace); // Bind the parameter

                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    // The row was deleted successfully
                    Response.Write("Place deleted successfully.");
                }
                else
                {
                    // No rows were affected, which means the CityName was not found
                    Response.Write("place not found or not deleted.");
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
            finally
            {
                con.Close();
            }
        }
    }
}