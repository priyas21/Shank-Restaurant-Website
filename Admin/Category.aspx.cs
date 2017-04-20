using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        string q1 = "select * from Category Where CatName='" + TextBox2.Text + "'";
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
        con1.Open();
        SqlCommand cmd1 = new SqlCommand(q1, con1);
        SqlDataAdapter adp = new SqlDataAdapter(cmd1);
        adp.Fill(dt);
        if (dt.Rows.Count == 1)
        {
            
            Label5.Text = "Category Already Exist";
        }
        else
        {

            string q = "insert into Category(CatName,CatDesc,Status) values('" + TextBox2.Text.Trim() + "',+'" + TextBox3.Text.Trim() + "','1')";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.ExecuteNonQuery();
            Label5.Text = "Category Added SuccessFully";
            TextBox2.Text = "";
            TextBox3.Text = "";
            con.Close();
            //Response.Redirect("ViewCategory.aspx");
        }
        
        
    }
}



