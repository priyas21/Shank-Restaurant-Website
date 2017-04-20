using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class ViewCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        if (!IsPostBack)
        {
            Fillgrid();
        }

    }
    private void Fillgrid()
    {
        DataTable dt = new DataTable();
        string q = "select * from Category";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand(q, con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        string q = "delete from Category where (CatID=" + id+")";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand(q, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Label1.Text = "Category Deleted Successfully";
        Fillgrid();

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        string id = GridView1.DataKeys[e.NewEditIndex].Value.ToString();
        Response.Redirect("EditCategory.aspx?id=" + id);
    }

    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        string id = GridView1.DataKeys[e.NewSelectedIndex].Value.ToString();
        Response.Redirect("ManageDishes.aspx?id=" + id);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Category.aspx");
    }
}