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
    public partial class C_place : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "SELECT * FROM CityPlaces where CityName='" + id + "'";
            DataSet ds = new DataSet();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(ds);
            d1.DataSource = ds;
            d1.DataBind();
            con.Close();
        }

        protected void d1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {


        }
    }
}