using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class salesreport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
        {
        string today = "SELECT  Item_Name, Item_Price, qty, createdate FROM Order_Detail WHERE createdate >='" + DateTime.Today.ToString() + "'";
        string todaysale = "SELECT SUM(Item_Price*qty) as ts from Order_Detail WHERE createdate >='" + DateTime.Today.ToString() + "'";

        string week="SELECT  Item_Name, Item_Price, qty, createdate FROM Order_Detail WHERE createdate BETWEEN  '"+ DateTime.Today.ToString() + "' and '"+DateTime.Now.AddDays(-7)+"'";
        string weeksale = "SELECT SUM(Item_Price*qty) as ts1 from Order_Detail WHERE createdate BETWEEN  '" + DateTime.Today.ToString() + "' and '" + DateTime.Now.AddDays(-7) + "'";

        string month = "SELECT  Item_Name, Item_Price, qty, createdate FROM Order_Detail WHERE createdate BETWEEN  '" + DateTime.Today.ToString() + "' and '" + DateTime.Now.AddDays(-30) + "'";
        string monthsale = "SELECT SUM(Item_Price*qty) as ts2 from Order_Detail WHERE createdate BETWEEN   '" + DateTime.Today.ToString() + "' and '" + DateTime.Now.AddDays(-30) + "'";

        string yearly = "SELECT  Item_Name, Item_Price, qty, createdate FROM Order_Detail WHERE createdate BETWEEN  '" + DateTime.Today.ToString() + "' and '" + DateTime.Now.AddYears(-1) + "'";
        string yearsale = "SELECT SUM(Item_Price*qty) as ts3 from Order_Detail WHERE createdate BETWEEN  '" + DateTime.Today.ToString() + "' and '" + DateTime.Now.AddYears(-1) + "'";
        // string q2="select sum(Item_Price*qty) as tds from Order_Detail where createdate="+DateTime.Today;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
        
        //daily
        con.Open();
        SqlCommand cmd = new SqlCommand(today, con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        todaysales.DataSource = dt;
        todaysales.DataBind();

        SqlCommand cmdd = new SqlCommand(todaysale, con);
        SqlDataAdapter adpp = new SqlDataAdapter(cmdd);
        DataTable dtt = new DataTable();
        adpp.Fill(dtt);
        if (dtt.Rows.Count == 1)
        {
            Label2.Text = dtt.Rows[0]["ts"].ToString();
        }
        

        //weekly
        SqlCommand cmd1 = new SqlCommand(week, con);
        SqlDataAdapter adp1 = new SqlDataAdapter(cmd1);
        DataTable dt1 = new DataTable();
        adp.Fill(dt1);        
        WeeklySales.DataSource = dt1;
        WeeklySales.DataBind();

        SqlCommand c1 = new SqlCommand(weeksale, con);
        SqlDataAdapter a1 = new SqlDataAdapter(c1);
        DataTable d1 = new DataTable();
        a1.Fill(d1);
        if (d1.Rows.Count == 1)
        {
            Label4.Text = d1.Rows[0]["ts1"].ToString();
        }

        //monthlly
        SqlCommand cmd2 = new SqlCommand(month, con);
        SqlDataAdapter adp2 = new SqlDataAdapter(cmd2);
        DataTable dt2 = new DataTable();
        adp.Fill(dt2);        
        MonthlySales.DataSource = dt;
        MonthlySales.DataBind();

        SqlCommand c2 = new SqlCommand(monthsale, con);
        SqlDataAdapter a2 = new SqlDataAdapter(c2);
        DataTable d2 = new DataTable();
        a2.Fill(d2);
        if (d2.Rows.Count == 1)
        {
            Label6.Text = d2.Rows[0]["ts2"].ToString();
        }



        //yearly
        SqlCommand cmd3 = new SqlCommand(yearly, con);
        SqlDataAdapter adp3 = new SqlDataAdapter(cmd3);
        DataTable dt3 = new DataTable();
        adp.Fill(dt3);
        YearlySales.DataSource = dt3;
        YearlySales.DataBind();

        SqlCommand c3 = new SqlCommand(yearsale, con);
        SqlDataAdapter a3 = new SqlDataAdapter(c3);
        DataTable d3 = new DataTable();
        a3.Fill(d3);
        if (d3.Rows.Count == 1)
        {
            Label8.Text = d3.Rows[0]["ts3"].ToString();
        }
        con.Close();
        

    }

}
