using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RLL
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null || Session["role"].Equals(""))
                {
                    LinkButton1.Visible =true;   // UserLogin
                    LinkButton2.Visible = true;  // Sign up
                    LinkButton3.Visible = false; // Logout
                    LinkButton4.Visible = false; // HelloUser
                    LinkButton6.Visible = false; //Travel Experience
                    LinkButton7.Visible = false; //Others Experience
                    LinkButton8.Visible = false; //Add Cities
                    LinkButton9.Visible = false; //Add Places
                    LinkButton10.Visible = false; //Add Restaurants
                    LinkButton11.Visible = false; //Add food
                    LinkButton12.Visible = false; //Delete Cities
                    LinkButton13.Visible = false; //Delete Places
                    LinkButton14.Visible = false; //Delete Restaurants
                    LinkButton15.Visible = false; //Delete FoodName
                    LinkButton17.Visible = false; //Destination
                    LinkButton5.Visible = true; //Admin login
                    LinkButton18.Visible = false;//Admin Reviews

                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; // UserLogin
                    LinkButton2.Visible = false; // Sign up
                    LinkButton3.Visible = true;  // Logout
                    LinkButton4.Visible = true;  // HelloUser
                    LinkButton6.Visible = true;  //Travel Experience
                    LinkButton7.Visible = true;  //Others Experience
                    LinkButton4.Text = "Hello " +Session["UserName"]?.ToString();
                    LinkButton8.Visible = false; //Add Cities
                    LinkButton9.Visible = false; //Add Places
                    LinkButton10.Visible = false; //Add Restaurants
                    LinkButton11.Visible = false; //Add food
                    LinkButton12.Visible = false; //Delete Cities
                    LinkButton13.Visible = false; //Delete Places
                    LinkButton14.Visible = false; //Delete Restaurants
                    LinkButton15.Visible = false; //Delete FoodName
                    LinkButton16.Visible = false; //Default Homepage
                    LinkButton17.Visible = true;  //Destination
                    LinkButton5.Visible = true; //Admin login
                    LinkButton18.Visible = false;//Admin reviews
                }

                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; // UserLogin
                    LinkButton2.Visible = false; // Sign up
                    LinkButton3.Visible = true; // Logout
                    LinkButton4.Visible = true; // HelloUser
                    LinkButton4.Text = "Hello Admin";
                    LinkButton8.Visible = true; //Add Cities
                    LinkButton9.Visible = true; //Add Places
                    LinkButton10.Visible = true; //Add Restaurants
                    LinkButton11.Visible = true; //Add food
                    LinkButton12.Visible = true; //Delete Cities
                    LinkButton13.Visible = true; //Delete Places
                    LinkButton14.Visible = true; //Delete Restaurants
                    LinkButton15.Visible = true; //Delete FoodName
                    LinkButton16.Visible = false; //Default Homepage
                    LinkButton17.Visible = true; //Destination
                    LinkButton6.Visible = false;//Travel Experience
                    LinkButton5.Visible = false; //Admin login
                    LinkButton18.Visible = true;//Admin reviews
                    LinkButton7.Visible = false;// reviews of others
                }



            }
            catch(Exception ex) 
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

            Session.Clear();
            Session.Abandon();

            Response.Redirect("homepage.aspx");
        }


        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            if (Session["role"].Equals("user"))
            {
                Response.Redirect("UserProfile.aspx");
            }            
        }
    }
}