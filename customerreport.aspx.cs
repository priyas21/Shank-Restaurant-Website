using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class customerreport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();

        string query = "select * from customer"; 
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataAdapter adp1 = new SqlDataAdapter(cmd);
        adp1.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();

    }
}
