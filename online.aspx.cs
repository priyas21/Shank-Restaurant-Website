using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


public partial class online : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string ordernum = Request.QueryString["id"];
        string s = "select SUM(Item_Price*qty) as price from Order_Detail where OrderNum=" + ordernum;
        
        DataTable dd = new DataTable();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
        con.Open();
        SqlCommand cc = new SqlCommand(s, con);
        SqlDataAdapter aa = new SqlDataAdapter(cc);
        aa.Fill(dd);
        if (dd.Rows.Count == 1)
        {

            amount.Value = dd.Rows[0]["price"].ToString();


        }

    }
    }

