using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class Admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
                
        
    }
    protected void LogIn_Click(object sender, EventArgs e)
    {
         DataTable dt=new DataTable();
        string q = "SELECT * FROM Sign_Up WHERE Username='" + TextBox1.Text + "'";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
        con.Open();
        SqlCommand cmd=new SqlCommand(q,con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(dt);
        if (dt.Rows.Count == 1)
        {                 
           
                if (dt.Rows[0]["Password"].ToString() == TextBox2.Text)
                {
                    Session["Username"] = TextBox1.Text;
                    Response.Redirect("Dishes.aspx");
                }
                else
                {
                    Visible = true;
                    Label13.Text = "Password Incorrect";
                }
        }
                  
        else
        {
            Visible = true;
            Label12.Text = "Username does not Exists";
            TextBox1.Text = "";
        }                    
                
        con.Close(); 
         }
    protected void SignUp_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        string q1 = "SELECT * FROM Sign_Up WHERE Username='" + TextBox3.Text + "' or Emailid='"+TextBox6.Text+"'";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand(q1, con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(dt);
        if (dt.Rows.Count == 1)
        {
            Label14.Text = "User Already Exists";
        }
        else
        {
            string q = "insert into Sign_Up values('" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7 + "')";
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
            
            SqlCommand cmd1 = new SqlCommand(q, con);
            int a = cmd1.ExecuteNonQuery();
            if (a > 0)
            {
                Label14.Text = "Your Acoount Has Been Created:";
                TextBox3.Text = TextBox4.Text = TextBox5.Text = TextBox6.Text = TextBox7.Text = TextBox8.Text = TextBox9.Text = "";

            }
            con.Close();

        }
    }
     protected void Button1_Click(object sender, EventArgs e)
     {
         try{

             DataSet ds=new DataSet();
             SqlConnection con=new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString);
             con.Open();
             string q1 = "SELECT Username,Password FROM Sign_Up Where Emailid='" + TextBox10.Text + "'";
             SqlCommand cmd = new SqlCommand(q1,con);
             SqlDataAdapter adp=new SqlDataAdapter(cmd);
             adp.Fill(ds);
             con.Close();
             if(ds.Tables[0].Rows.Count>0)
             {
                 MailMessage msg=new MailMessage();
                 msg.From=new MailAddress("priyasodhi4s@gmail.com");
                 msg.To.Add(TextBox10.Text);
                 msg.Subject="Your Password Details";
                 msg.Body="Hi,<br/>Please Check Your Login Details<br/><br/>Your Username:"+
                     ds.Tables[0].Rows[0]["Username"]+"<br/><br/>Your Password:"+ds.Tables[0].Rows[0]["Password"]+"<br/><br/>";
                 msg.IsBodyHtml=true;

                 SmtpClient smtp=new SmtpClient();
                 smtp.Host="smtp.gmail.com";
                 smtp.Port=587;
                 smtp.Credentials=new System.Net.NetworkCredential("priyasodhi4s@gmail.com","52xintex_211420");
                 smtp.EnableSsl=true;
                 smtp.Send(msg);
                 Label11.Visible=true;
                 Label11.Text="Your Passwrod Details Has Been Sent To your Mail";
                 TextBox10.Text="";
             }
             else
             {
                 Label11.Text="The Email you Entered Does Not Exists";
             }
         }
         catch(Exception ex)
         {
             Console.WriteLine("{0} Exception Caught.",ex);
         }
         
     }
}



        

