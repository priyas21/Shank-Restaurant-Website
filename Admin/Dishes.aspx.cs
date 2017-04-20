using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Menu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        if(!IsPostBack)
        {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
        DataTable dt = new DataTable();
        con.Open();
        string q = "select * from Category";
        SqlCommand cmd= new SqlCommand(q,con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(dt);
        DropDownList2.DataSource = dt;
        DropDownList2.DataTextField = "CatName";
        DropDownList2.DataValueField = "CatID";
        DropDownList2.DataBind();
        con.Close();
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
        con.Open();
        string i = DropDownList2.SelectedItem.Value.ToString();
        
        string q = "select * from Dishes where CatID="+i;
        SqlCommand cmd = new SqlCommand(q, con);
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(dt);
        DropDownList1.DataSource = dt;
        DropDownList1.DataTextField = "DishName";
        DropDownList1.DataValueField = "DishID";
        DropDownList1.DataBind();
        con.Close();
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string j = DropDownList1.SelectedItem.Value.ToString();
        string query = "select * from Dishes where DishID=" + j;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
        con.Open();
        SqlCommand cmd1 = new SqlCommand(query, con);
        DataTable dt1 = new DataTable();
        SqlDataAdapter adp1 = new SqlDataAdapter(cmd1);
        adp1.Fill(dt1);
        if (dt1.Rows.Count == 1)
        {
            TextBox4.Text = dt1.Rows[0]["DishPrice"].ToString();
            TextBox1.Text = dt1.Rows[0]["DishDesc"].ToString();

        }
        con.Close();
    }
}
