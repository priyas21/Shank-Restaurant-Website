using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class EditDishes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = Request.QueryString["id"];
             string q = "select * from Dishes where DishID=" + id;
            DataTable dt=new DataTable();
            SqlConnection con=new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
            con.Open();
            SqlCommand cmd=new SqlCommand(q,con);
            SqlDataAdapter adp=new SqlDataAdapter(cmd);
            adp.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                TextBox1.Text = dt.Rows[0]["DishName"].ToString();
                TextBox2.Text = dt.Rows[0]["DishPrice"].ToString();
                TextBox3.Text = dt.Rows[0]["DishDesc"].ToString();
                HiddenField1.Value = dt.Rows[0]["DishID"].ToString();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = TextBox1.Text;
        string price = TextBox2.Text;
        string desc = TextBox3.Text;
        string id = HiddenField1.Value;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
        con.Open();
        string q = "UPDATE Dishes SET DishName='" + name + "',DishPrice='" + price + "',DishDesc='"+desc+"' where(DishID=" + id + ")";
        SqlCommand cmd = new SqlCommand(q, con);
        int exec = cmd.ExecuteNonQuery();
        if (exec > 0)
        {
            Label4.Text = "Dish Editted Successfully";
            TextBox2.Text = "";
            TextBox3.Text = "";
            //Response.Redirect("Dishes.aspx");
        }
        con.Close();
    }
    }
