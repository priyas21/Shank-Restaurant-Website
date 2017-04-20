<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reciept.aspx.cs" Inherits="Reciept" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reciept</title>
<style>
#customers
{
font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
width:100%;
border-collapse:collapse;
background-color:#EAF2D3;

}
#customers td, #customers th 
{
font-size:x-large;
border:1px solid #98bf21;
padding:3px 7px 2px 7px;
}
#customers th 
{
font-size:larger;
text-align:left;
padding-top:5px;
padding-bottom:4px;
background-color:#A7C942;
color:#ffffff;
}
#customers tr.alt td 
{
color:#000000;
background-color:#EAF2D3;
}
</style>
</head>

<body style="background-color:ThreeDHighlight;">
<form runat="server">
  
<table  id="customers">
<tr>
<th colspan="3"><center><h2>Customer's Reciept</h2><center></td>



</tr>
<tr>
<td><asp:Label ID="Label1" runat="server" Text="First Name" ></asp:Label></td>
<td><asp:Label ID="Label9" runat="server" Text="" ></asp:Label></td>
</tr>

<tr>
<td><asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label></td>
<td><asp:Label ID="Label10" runat="server" Text=""  ></asp:Label></td>
</tr>

<tr>
<td><asp:Label ID="Label3" runat="server" Text="Address"  ></asp:Label></td>
<td><asp:Label ID="Label11" runat="server" Text="" ></asp:Label></td>
</tr>

<tr>
<td><asp:Label ID="Label4" runat="server" Text="City"  ></asp:Label></td>
<td><asp:Label ID="Label12" runat="server" Text=""  ></asp:Label></td>
</tr>

<tr>
<td><asp:Label ID="Label5" runat="server" Text="Email ID"  ></asp:Label></td>
    <td><asp:Label ID="Label13" runat="server" Text=""  ></asp:Label></td>

</tr>

<tr>
<td><asp:Label ID="Label6" runat="server" Text="Phone Number"  ></asp:Label></td>
    <td><asp:Label ID="Label14" runat="server" Text="" ></asp:Label></td>

</tr>

<tr>
<td><asp:Label ID="Label7" runat="server" Text="Mode Of Payment"  ></asp:Label></td>
<td><asp:Label ID="Label15" runat="server" Text=""  ></asp:Label></td>
  </tr>      

<tr>    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="2" ForeColor="Black" BackColor="#EAF2D3" Width="500px" BorderStyle="Dashed" BorderWidth="5px" Font-Size="Large" Font-Names="Comic Sans MS">
        <Columns>
            <asp:BoundField DataField="Item_Name" HeaderText="Dish Name"  HeaderStyle-Font-Size="Larger"/>
            <asp:BoundField DataField="Item_Price" HeaderText="Dish Price" HeaderStyle-Font-Size="Larger" />
              <asp:BoundField DataField="qty" HeaderText="Dish Qty"  HeaderStyle-Font-Size="Larger"/>
        </Columns>
    </asp:GridView>
    </tr>
<br /><br />  
  
    <tr>
    <td><asp:Label ID="Label8" runat="server" Text="ToTal Price" Font-Size="X-Large" ForeColor="Black" Font-Names="Algerian"></asp:Label></td>
    <td><asp:Label ID="Label16" runat="server" Text=""   Font-Size="Large" Font-Names="Comic Sans MS" BorderStyle="Solid" Font-Bold="true" BorderColor="Black" Height="30" Width="250"></asp:Label></td>
    </tr>
    
   
</table>

</form>

<a href="javascript:window.print()" style="font-family:Comic Sans MS; color:Blue; font-size:x-larger; ">PRINT</a>
</body>

</html>
