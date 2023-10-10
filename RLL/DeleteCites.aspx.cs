using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;

namespace RLL
{
    public partial class DeleteCites : System.Web.UI.Page
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
                string CityName = TextBox1.Text;

                // Construct the SQL query with a parameterized query to prevent SQL injection
                string query = "DELETE FROM Cities WHERE CityName = @CityName";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@CityName", CityName); // Bind the parameter

                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    // The row was deleted successfully
                    Response.Write("City deleted successfully.");
                }
                else
                {
                    // No rows were affected, which means the CityName was not found
                    Response.Write("City not found or not deleted.");
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
