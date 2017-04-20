<%@ Page Language="C#" AutoEventWireup="true" CodeFile="online.aspx.cs" Inherits="online" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image:url('img/Paypal.jpg'); background-repeat:no-repeat;">
<center><h1 style="text-decoration:underline; text-shadow:black; font-family:Monotype Corsiva; color:Black; font-weight:bold; font-size:50px;"> Welcome To  Paypal Online Ordering</h1></center>
   <form action="https://www.paypal.com/cgi-bin/webscr" method="post">

    <input type="hidden" name="cmd" value="_xclick" />
    <input type="hidden" name="business" value="Shankhrestaurant@yahoo.com" />

    <input type="hidden" id="itemname" name="item_name"  value="SHANKH" />

   <input type="hidden" id="amount" name="amount" runat="server" value="" />

 <input type="hidden" name="shipping" value="13.00" /> 

    <input type="submit" value="Buy!" style=" height:55px; width:220px; margin-left:750px; margin-top:350px;  color:White; Font-Size:x-Large; font-family:Algerian; border-style:Outset; border-color:#FF6666; background-color:Black;"  />

</form>
</body>
</html>
