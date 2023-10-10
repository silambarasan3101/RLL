using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RLL
{
    public partial class UserProfile : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserId"] == null || Session["UserId"].ToString() == "")
            {
                Response.Write("<script>alert('Not Working');</script>");
            }
            else
            {
                if (!Page.IsPostBack)
                {
                    GetUserData();
                }
            }
        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            UpdateNewPassword();
        }

        void UpdateNewPassword()
        {
            string password = "";
            if (NewPassword.Text.Trim() == "")
            {
                password = Password.Text.Trim();
            }
            else
            {
                password = NewPassword.Text.Trim();
            }
            try
            {
                SqlConnection con = new SqlConnection(conStr);

                //The connection of the database will open if its closed
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE UserRegistration SET FirstName=@fn, LastName=@ln, ContactNumber=@cn, EmailID=@email, DateOfBirth=@dob, Password=@newpwd Where UserId='" + Session["UserId"].ToString() + "'", con);

                cmd.Parameters.AddWithValue("@fn", FirstName.Text.Trim());  //Trim is used to remove the spaces in front and back
                cmd.Parameters.AddWithValue("@ln", LastName.Text.Trim());
                cmd.Parameters.AddWithValue("@cn", ContactNumber.Text.Trim());
                cmd.Parameters.AddWithValue("@email", Email.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", DOB.Text.Trim());
                cmd.Parameters.AddWithValue("@newpwd", password);  

                int result = cmd.ExecuteNonQuery();  //It Will Return the integer value i.e.,1 row is affected

                con.Close();

                if (result == 0)
                {
                    Response.Write("<script>alert('Update failed');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Update Successful');</script>");
                    GetUserData();
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
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

                SqlCommand cmd = new SqlCommand("Select FirstName, LastName, ContactNumber, EmailID, DateOfBirth, UserId, Password FROM UserRegistration where UserId='" + Session["UserId"].ToString() + "'", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);  //Disconnected Architecture
                DataTable dt = new DataTable();    //Inbuilt datatable in C#

                da.Fill(dt);     //Used to fill the datatable

                

                FirstName.Text = dt.Rows[0]["FirstName"].ToString();
                LastName.Text = dt.Rows[0]["LastName"].ToString();
                ContactNumber.Text = dt.Rows[0]["ContactNumber"].ToString();
                Email.Text = dt.Rows[0]["EmailID"].ToString();
                DOB.Text = dt.Rows[0]["DateOfBirth"].ToString();
                UserId.Text = dt.Rows[0]["UserId"].ToString();
                Password.Text = dt.Rows[0]["Password"].ToString();
                

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                
            }
        }

    }
}