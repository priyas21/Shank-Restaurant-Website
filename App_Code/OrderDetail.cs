using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for OrderDetail
/// </summary>
/// 


    public class OrderDetail
    {

        public int OrderNum;
        public string Item_name;
        public double Item_price;
        public int qty;
        public DateTime createdate;
        public OrderDetail()
        {

           
            //
            // TODO: Add constructor logic here
            //
        }
        public void insertorderdetail()
        {
            string query = "INSERT INTO Order_Detail(OrderNum,Item_Name,Item_Price,qty,createdate) VALUES('"+OrderNum+"','" + Item_name + "','" + Item_price + "',"+qty+", '"+createdate+"')";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
