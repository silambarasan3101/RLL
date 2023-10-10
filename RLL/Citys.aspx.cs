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
    public partial class Citys : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            string selectedValue = (string)Session["statename"];
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "SELECT * FROM Cities where StateName='" + Session["states"].ToString() + "'";
            DataSet ds = new DataSet();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(ds);
            d1.DataSource = ds;
            d1.DataBind();
            con.Close();



        }
    }
}