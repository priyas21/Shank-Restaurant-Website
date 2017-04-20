using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ManageDishes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        if (!IsPostBack)
        {
            fillgrid();
        }
    }
    public void fillgrid()
    {
        DataTable dt = new DataTable();
        string id = Request.QueryString["id"];
        string query = "select * from Dishes where CatID=" + id;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataAdapter adp1 = new SqlDataAdapter(cmd);
        adp1.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        string q = "delete from Dishes where (DishID=" + id + ")";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand(q, con);
        cmd.ExecuteNonQuery();
        con.Close();
        fillgrid();
        Label1.Text = "Dish Deleted Successfully";

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        string id = GridView1.DataKeys[e.NewEditIndex].Value.ToString();
        Response.Redirect("EditDishes.aspx?id=" + id);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        Response.Redirect("AddDish.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewCategory.aspx");
    }
}
