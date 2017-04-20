using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class EditCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = Request.QueryString["id"];
            string q = "select * from Category where CatID=" + id;
            DataTable dt=new DataTable();
            SqlConnection con=new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
            con.Open();
            SqlCommand cmd=new SqlCommand(q,con);
            SqlDataAdapter adp=new SqlDataAdapter(cmd);
            adp.Fill(dt);
            if(dt.Rows.Count==1)
            {
                TextBox1.Text=dt.Rows[0]["CatID"].ToString();
                TextBox2.Text=dt.Rows[0]["CatName"].ToString();
                TextBox3.Text=dt.Rows[0]["CatDesc"].ToString();
                
            }
            con.Close();
        }
      }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = TextBox1.Text;
        string name = TextBox2.Text;
        string desc = TextBox3.Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
        con.Open();
        string q = "UPDATE Category SET CatName='" + name + "',CatDesc='" + desc + "' where(CatID=" + id + ")";
        SqlCommand cmd = new SqlCommand(q, con);
        int exec=cmd.ExecuteNonQuery();
        if (exec > 0)
        {
            Label5.Text = "Category Edited Successfully";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text="";
           // Response.Redirect("ViewCategory.aspx");
        }
    }
}
