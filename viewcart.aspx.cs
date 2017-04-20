using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class viewcart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            fillGrid();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {/*
            Order obj = new OrderDetail();
            Cart cbobj = (Cart)Session["shankhproducts"];
            obj.number_of_item = cbobj.noOfIds;

            int price = 0;

//            for (int i = 0; i < cbobj.noOfIds; i++)
  //          {
    //            price += cbobj.product[i].product_price;
      //      }
            obj.Total_Price = price;
            
            obj.Order_date = DateTime.Now.ToShortDateString();
            obj.Order_status = '0';

            int odid = obj.createorder();
            if (odid > 0)
            {

                for (int i = 0; i < cbobj.noOfIds; i++)
                {
                    orderdetail oobj = new orderdetail();
                    oobj.book_id = cbobj.product[i].product_id;
                    oobj.order_no = odid;
                    oobj.create_orderdetail();
                }
                Session["cartbooks"] = null;
                Label1.Text = "your order is placed, you can collect the check the status in ur account";
            }

        }
        else
        {
            Response.Redirect("login.aspx");
        }

*/
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("CheckOut.aspx");
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id =Convert.ToInt32( GridView1.DataKeys[e.RowIndex].Value.ToString());
        Cart obj = (Cart)Session["shankhproducts"];
        obj.deleteProduct(id);
        fillGrid();
    }
    private void fillGrid()
    {


        string b = "";
        string a = "";
        if (Session["shankhproducts"] != null)
        {

            Cart obj = (Cart)Session["shankhproducts"];
            for (int i = 0; i <= obj.noOfIds; i++)
            {
                a = Convert.ToString(obj.product[i]) + ",";
                b = b + a;
                //Label1.Text +=a+",";
            }
            char[] c = new char[1];
            c[0] = ',';
            b = b.TrimEnd(c);
            Label1.Text = b;
            //write code to run select query and assign table to gridview
            string q = "select * from Dishes where DishId IN(" + b + ")";
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(q, con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            dt.Columns.Add("qty");
            for(int count=0; count<dt.Rows.Count;count++)
            {

                dt.Rows[count]["qty"] = obj.qty[count];        
            }
            
            
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }
        else
        {
            LblTol.Text = "no item in cart";
        }
       
    }
}
