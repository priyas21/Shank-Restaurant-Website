using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddDish : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string q = "select * from Category";
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(q, con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            DropDownList1.DataSource = dt;

            DropDownList1.DataTextField = "CatName";
            DropDownList1.DataValueField = "CatID";
            DropDownList1.DataBind();
            con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        DataTable dt = new DataTable();
        string q1 = "select * from Dishes Where DishName='" + TextBox1.Text + "'";
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
        con1.Open();
        SqlCommand cmd1 = new SqlCommand(q1, con1);
        SqlDataAdapter adp = new SqlDataAdapter(cmd1);
        adp.Fill(dt);
        if (dt.Rows.Count == 1)
        {

            Label5.Text = "Dish Already Exist";
        }
        else
        {
            string a = TextBox1.Text;
            string b = TextBox2.Text;
            string c = TextBox3.Text;
            string d = DropDownList1.SelectedItem.Value.ToString();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
            con.Open();
            string query = "insert into Dishes(CatID,DishName,DishPrice,DishDesc,Status) values('" + d + "','" + a + "','" + b + "','" + c + "','1')";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            Label5.Text = "Dish Added";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewCategory.aspx");
    }
}
