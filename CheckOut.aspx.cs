using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using priya;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CheckOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //protected void LinkButton1_Click(object sender, EventArgs e)
    //{
    //    Order obj = new Order();
    //    obj.FirstName = TextBox1.Text;
    //    obj.LastName = TextBox2.Text;
    //    obj.Address = TextBox3.Text;
    //    obj.City = TextBox4.Text;
    //    obj.EmailID = TextBox5.Text;
    //    obj.Phone_num = TextBox6.Text;
    //    obj.ModeOfPayment = DropDownList1.SelectedItem.Text;
    //    int oid = obj.insert_order();
    //    Cart cobj = (Cart)Session["shankhproducts"];
    //    if (Session["shankhproducts"] != null)
    //    {
    //        if (oid > 0 && cobj.noOfIds > 0)
    //        {
    //            {
    //                string a = "";
    //                string b = "";

    //                for (int i = 0; i <= cobj.noOfIds; i++)
    //                {
    //                    a = Convert.ToString(cobj.product[i]) + ",";
    //                    b = b + a;
    //                    //Label1.Text +=a+",";
    //                }
    //                char[] c = new char[1];
    //                c[0] = ',';
    //                b = b.TrimEnd(c);
    //                string q = "select * from Dishes where DishId IN('" + b + "')";
    //                DataTable dt = new DataTable();
    //                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
    //                con.Open();
    //                SqlCommand cmd = new SqlCommand(q, con);
    //                SqlDataAdapter adp = new SqlDataAdapter(cmd);
    //                adp.Fill(dt);
    //                OrderDetail odobj = new OrderDetail();
    //                for (int count = 0; count < dt.Rows.Count; count++)
    //                {
    //                    //initialize  the properties of object
    //                    odobj.OrderNum = oid;
    //                    odobj.Item_name = dt.Rows[0]["DishName"].ToString();
    //                    odobj.Item_price = Convert.ToDouble(dt.Rows[0]["DishPrice"]);

    //                }
    //                con.Close();
    //            }

    //        }
    //    }
    //}
    protected void PAY_Click(object sender, EventArgs e)
    {

            Order obj = new Order();
                      
            obj.FirstName = TextBox1.Text;
            obj.LastName = TextBox2.Text;
            obj.Address = TextBox3.Text;
            obj.City = TextBox4.Text;
            obj.EmailID = TextBox5.Text;
            obj.Phone_num = TextBox6.Text;
            obj.ModeOfPayment = DropDownList1.SelectedItem.Text;
              // obj.nooftimes=0;
           // obj.DATE = DateTime.Now;
            int oid = obj.insert_order();
           // obj.Insert_order_not();
            //string query = "select * from customer where EmailID=" + TextBox5.Text;
            //SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
            //con1.Open();
            //SqlCommand cmd1 = new SqlCommand(query, con1);
            //DataTable dt1 = new DataTable();
            //SqlDataAdapter adp1 = new SqlDataAdapter(cmd1);
            //adp1.Fill(dt1);
            //if (dt1.Rows.Count == 1)
            //{
            //    obj.nooftimes += 1;

            //    con1.Close();
            //}
                         
                       
            Cart cobj = (Cart)Session["shankhproducts"];
            if (Session["shankhproducts"] != null)
            {
                if (oid > 0 && cobj.noOfIds > 0)
                {
                    {
                        string a = "";
                        string b = "";

                        for (int i = 0; i < cobj.noOfIds; i++)
                     {
                            a = Convert.ToString(cobj.product[i]) + ",";
                            b = b + a;
                            //Label1.Text +=a+",";
                        }
                        char[] c = new char[1];
                        c[0] = ',';
                        b = b.TrimEnd(c);
                        string q = "select * from Dishes where DishID IN(" + b + ")";
                        DataTable dt = new DataTable();
                        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
                        con.Open();
                        SqlCommand cmd = new SqlCommand(q, con);
                        SqlDataAdapter adp = new SqlDataAdapter(cmd);
                        adp.Fill(dt);
                        OrderDetail odobj = new OrderDetail();
                        for (int count = 0; count < dt.Rows.Count; count++)
                        {
                            //initialize  the properties of object
                            odobj.OrderNum = oid;
                            odobj.Item_name = dt.Rows[count]["DishName"].ToString();
                            odobj.Item_price = Convert.ToDouble(dt.Rows[count]["DishPrice"]);
                            odobj.qty = Convert.ToInt32(cobj.qty[count]);
                            odobj.createdate = DateTime.Now;
                            odobj.insertorderdetail();
                        }
                        con.Close();
                    }
                    if (DropDownList1.SelectedItem.Text == "Online")
                    {
                        Response.Redirect("online.aspx?id=" + oid);
                    }
                    else
                    {
                        Response.Redirect("Reciept.aspx?id=" + oid);
                    }
                }

            }
        }
    }

    
    




    

