using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class Contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        var fromAddress = new MailAddress("priyasodhi4s@gmail.com", "From Name");
        var toAddress = new MailAddress("priyasodhi4s@gmail.com", "To Name");
        const string fromPassword = "52xintex_211420";
        const string subject = "";
        const string body = "";

        var smtp = new SmtpClient
        {
            Host = "smtp.gmail.com",
            Port = 587,
            EnableSsl = true,
            DeliveryMethod = SmtpDeliveryMethod.Network,
            UseDefaultCredentials = false,
            Credentials = new NetworkCredential(fromAddress.Address, fromPassword)
        };
        MailMessage message = new MailMessage(fromAddress, toAddress);
        message.IsBodyHtml = true;
           message.Subject = TextBox5.Text;
            message.Body="Name:"+TextBox1.Text.ToString()+"<br/><br/>EMAIL:"+TextBox2.Text.ToString()+"<br/><br/> Phone Number:"+TextBox3.Text.ToString()+"<br/><br/> Message:"+TextBox4.Text.ToString()+"<br/><br/>";
            
            smtp.Send(message);
              
        Label6.Text = "Your Message Has Been Recieved.Thanks For Contacting Us.We Value Your Feedback";

}
}