using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RLL
{
    public partial class Reviews : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] == null || Session["role"].Equals(""))
            {
                Response.Write("<script>alert('Need to login first to give the feedback');</script>");
            }
            else if (Session["role"].Equals("user"))
            {
                if (!Page.IsPostBack)
                {
                    GetUserData();
                }
            }
            else if (Session["role"].Equals("admin"))
            {
                if (!Page.IsPostBack)
                {
                    GetAdminData();
                }
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
                        cmd.CommandText = "insert into Feedback values(@un,@rating,@cmt,@b)";
                        cmd.Parameters.AddWithValue("@un", TextBox3.Text.ToString());
                        cmd.Parameters.AddWithValue("@rating", TextBox1.Text.ToString());
                        cmd.Parameters.AddWithValue("@cmt", TextBox2.Text.ToString());
                        cmd.Parameters.AddWithValue("@b", b1.ToString());

                        con.Open();
                        int nor = cmd.ExecuteNonQuery();

                        con.Close();
                        if (nor > 0)
                        {
                            Response.Write("<script>alert('Hurray Uploaded Successfully!');</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('Upload Failed');</script>");
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

        void GetUserData()
        {
            try
            {
                SqlConnection con = new SqlConnection(conStr);

                //The connection of the database will open if its closed
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Select UserId FROM UserRegistration where UserId='" + Session["UserId"].ToString() + "'", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);  //Disconnected Architecture
                DataTable dt = new DataTable();    //Inbuilt datatable in C#

                da.Fill(dt);     //Used to fill the datatable


                TextBox3.Text = dt.Rows[0]["UserId"].ToString();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }




        void GetAdminData()
        {
            try
            {
                SqlConnection con = new SqlConnection(conStr);

                //The connection of the database will open if its closed
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Select UserName FROM AdminInfo where UserName='" + Session["username"].ToString() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);  //Disconnected Architecture
                DataTable dt = new DataTable();    //Inbuilt datatable in C#

                da.Fill(dt);     //Used to fill the datatable


                TextBox3.Text = dt.Rows[0]["UserName"].ToString();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
    }

}
    