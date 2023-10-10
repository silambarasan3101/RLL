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
    public partial class Destination : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "select Count(*) from States where StateName='" + DropDownList1.SelectedValue + "'";

            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            Session["states"] = DropDownList1.Text;
            con.Close();
            if (temp == 1)
            {
                Response.Redirect("./Citys.aspx");
                //Response.Redirect("City.aspx?authorID=" + selectedAuthorID);
            }

        }
    }
}