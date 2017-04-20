using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Reciept : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string ordernum = Request.QueryString["id"];
        string q = "select * from [Order] where OrderNum=" + ordernum;
        string s = "select SUM(Item_Price*qty) as price from Order_Detail where OrderNum=" + ordernum;
        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
        con.Open();

        DataTable dd = new DataTable();
        SqlCommand cc = new SqlCommand(s, con);
        SqlDataAdapter aa = new SqlDataAdapter(cc);
        aa.Fill(dd);

        SqlCommand cmd = new SqlCommand(q, con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(dt);
        if (dt.Rows.Count == 1)
        {
           Label9.Text = dt.Rows[0]["FirstName"].ToString();
           Label10.Text = dt.Rows[0]["LastName"].ToString();
           Label11.Text = dt.Rows[0]["Address"].ToString();
           Label12.Text = dt.Rows[0]["City"].ToString();
           Label13.Text = dt.Rows[0]["EmailID"].ToString();
           Label14.Text = dt.Rows[0]["Phone_num"].ToString();
           Label15.Text = dt.Rows[0]["ModeOfPayment"].ToString();
        }
        if (dd.Rows.Count == 1)
        {
            Label16.Text = dd.Rows[0]["price"].ToString();
        }
        con.Close();
        string q1 = "select * from Order_Detail where OrderNum=" + ordernum;
       
        DataTable dt1 = new DataTable();
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
        con1.Open();
        SqlCommand cmd1 = new SqlCommand(q1, con1);
        SqlDataAdapter adp1 = new SqlDataAdapter(cmd1);
        adp1.Fill(dt1);
        GridView1.DataSource = dt1;
        GridView1.DataBind();
        con1.Close();
        


    }
}
