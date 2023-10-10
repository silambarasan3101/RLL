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
    public partial class AdminCityPlaces : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] != "admin")
            {
                Response.Redirect("AdminLogin.aspx");
            }
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
                        cmd.CommandText = "insert into CityPlaces values(@city,@img,@CityName)";
                        cmd.Parameters.AddWithValue("@city", TextBox3.Text);
                        cmd.Parameters.AddWithValue("@CityName", TextBox1.Text);

                        cmd.Parameters.AddWithValue("@img", b1.ToString());

                        con.Open();
                        int nor = cmd.ExecuteNonQuery();

                        con.Close();
                        if (nor > 0)
                        {
                            Response.Write("<script>alert('Data inserted Successfully!');</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('Insertion Failed');</script>");
                        }

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