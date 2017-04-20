using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Menu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // string id=Request.QueryString["id"];
            DataTable dt = new DataTable();
            string q = "select * from Category";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand(q, con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            ddlcategories.DataSource = dt;
            ddlcategories.DataTextField = "CatName";
            ddlcategories.DataValueField = "CatID";
            ddlcategories.DataBind();
        }
    }
    protected void ddlcategories_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label2.Text = "";
        string id = ddlcategories.SelectedValue;
        DataTable dt = new DataTable();
        string q = "select * from Dishes where Catid=" + id;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
        con.Open();

        SqlCommand cmd = new SqlCommand(q, con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(dt);
        ListView1.DataSource = dt;
       


        ListView1.DataBind();
    }
    protected void ListViewi_selectchanging(object sender, ListViewSelectEventArgs e)
    {
        
        Label2.Text = "";
        ListView1.SelectedIndex = Convert.ToInt32(e.NewSelectedIndex);
        string id = ListView1.SelectedDataKey.Value.ToString();
        int did = Convert.ToInt32(id);
        if (Session["shankhproducts"] == null)
        {
            
            Cart obj = new Cart();
            obj.addProduct(did);
            Session["shankhproducts"] = obj;
            Label2.ForeColor = System.Drawing.Color.Black;
            Label2.Text = "Item Added To The Cart";
            
        }
        else
        {
           
            Label2.Text="";
            Cart obj = (Cart)Session["shankhproducts"];
            obj.addProduct(did);
            Label2.Text = "Item Added To The Cart";

        }
    }
}
