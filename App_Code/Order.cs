using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for Order
/// </summary>
/// 
namespace priya
{
    public class Order
    {

        public int OID;
        public string FirstName;
        public string LastName;
        public string Address;
        public string City;
        public string EmailID;
        public string Phone_num;
        public float Total_Price;
        public string ModeOfPayment;
        //public DateTime DATE;
        public int nooftimes;
//        OrderDetail[] od = new OrderDetail[5];


        public Order()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public int insert_order()
        {
            SqlConnection con=new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
            con.Open();
            string q="INSERT INTO [Order](FirstName, LastName, Address, City, EmailID, Phone_num, Total_Price, ModeOfPayment) values ('"+FirstName+"','"+LastName+"','"+Address+"','"+City+"','"+EmailID+"','"+Phone_num+"','"+Total_Price+"','"+ModeOfPayment+"');select @@identity";
            SqlCommand cmd=new SqlCommand(q,con);
            int t = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            //int t = 2;
            return t;
            //    od = new OrderDetail();
            //    od.OdID = 1;
        }
        //public void Insert_order_not()
        //{
        //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
        //    con.Open();
        //    string q1 = "INSERT INTO customer(FirstName, LastName, EmailID, NoOfTimesOrdered) VALUES('"+FirstName+"','"+LastName+"' +'" +EmailID + "','"+nooftimes+"')";
        //    SqlCommand cmd = new SqlCommand(q1, con);
        //    cmd.ExecuteNonQuery();
            
        //    con.Close();
        //    //int t = 2;
            
          
        //}

    }
}