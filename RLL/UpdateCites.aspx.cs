using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RLL
{
    public partial class UpdateCites : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            LblMsg.Visible = true;
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                if (f1.HasFile)
                {
                    string fileName = f1.FileName.ToString();
                    string fileExtension = Path.GetExtension(fileName).ToLower();

                    if (fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension == ".png" || fileExtension == ".gif")
                    {
                        f1.SaveAs(Request.PhysicalApplicationPath + "./image/" + f1.FileName.ToString());
                        string b1 = "image/" + f1.FileName.ToString();
                        cmd.CommandText = "UPDATE Cities SET CityName = 'New Goa Name', CityImage = 'New Goa Image URL'\r\nWHERE CityName = 'Goa';\r\n";
                        cmd.Parameters.AddWithValue("@CityName", TextBox1.Text.ToString());
                        cmd.Parameters.AddWithValue("@rCitimage", b1.ToString());
                       
                        

                        con.Open();
                        int nor = cmd.ExecuteNonQuery();

                        con.Close();
                        string script = "alert('Hurray Uploaded Successfully!');";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "insertSuccess", script, true);

                        // Process the file because it's a valid image format
                    }
                    else
                    {
                        // Display an error message to the user
                        LblMsg.Text += "Only .jpg, .jpeg, .png, or .gif files are allowed.";
                    }
                }
                else
                {
                    LblMsg.Text += "Please choose image file";
                    // Handle case where no file was selected
                }


            }
            catch (Exception ex)
            {
                LblMsg.Text = ex.ToString();
            }

        }
    }
}