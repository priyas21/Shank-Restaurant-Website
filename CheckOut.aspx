<%@ Page Title="" Language="C#" MasterPageFile="~/SecondMasterPage.master" AutoEventWireup="true" CodeFile="CheckOut.aspx.cs" Inherits="CheckOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="CSSTableGenerator">
<table>
<tr>
<td colspan="3"></td>



</tr>
<tr>
<td><asp:Label ID="Label1" runat="server" Text="First Name"  Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label></td>
<td><asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:TextBox></td>
<td><asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox1" ValidateEmptyText="True" ClientValidationFunction="RequiredValidate" ValidationGroup="checkout" Font-Size="Medium"></asp:CustomValidator><br />
<asp:CustomValidator ID="CustomValidator7" runat="server" ErrorMessage="Should Have Aplhabets Only" ControlToValidate="TextBox1" ValidationGroup="checkout" ValidateEmptyText="True" ClientValidationFunction="AlphabetsValidator" Font-Size="Medium"></asp:CustomValidator>
</td>
</tr>

<tr>
<td><asp:Label ID="Label2" runat="server" Text="Last Name"  Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label></td>
<td><asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:TextBox></td>
<td><asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox2" ValidateEmptyText="True" ClientValidationFunction="RequiredValidate" ValidationGroup="checkout" Font-Size="Medium"></asp:CustomValidator><br />
<asp:CustomValidator ID="CustomValidator3" runat="server" ErrorMessage="Should Have Aplhabets Only" ControlToValidate="TextBox1" ValidationGroup="checkout" ValidateEmptyText="True" ClientValidationFunction="AlphabetsValidator" Font-Size="Medium"></asp:CustomValidator>
</td>

</tr>

<tr>
<td><asp:Label ID="Label3" runat="server" Text="Address"  Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label></td>
<td><asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:TextBox></td>
<td><asp:CustomValidator ID="CustomValidator4" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox1" ValidateEmptyText="True" ClientValidationFunction="RequiredValidate" ValidationGroup="checkout" Font-Size="Medium"></asp:CustomValidator><br />
<asp:CustomValidator ID="CustomValidator5" runat="server" ErrorMessage="Should Have Aplhabets,numbers or special characters Only" ControlToValidate="TextBox1" ValidationGroup="checkout" ValidateEmptyText="True" ClientValidationFunction="AlphaNumericValidator" Font-Size="Medium"></asp:CustomValidator>
</td>


</tr>

<tr>
<td><asp:Label ID="Label4" runat="server" Text="City"  Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label></td>
<td><asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:TextBox></td>
<td><asp:CustomValidator ID="CustomValidator6" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox4" ValidateEmptyText="True" ClientValidationFunction="RequiredValidate" ValidationGroup="checkout" Font-Size="Medium"></asp:CustomValidator><br />
<asp:CustomValidator ID="CustomValidator8" runat="server" ErrorMessage="Should Have Aplhabets,numbers or special characters Only" ControlToValidate="TextBox1" ValidationGroup="checkout" ValidateEmptyText="True" ClientValidationFunction="AlphaNumericValidator" Font-Size="Medium"></asp:CustomValidator>
</td>

</tr>

<tr>
<td><asp:Label ID="Label5" runat="server" Text="Email ID"  Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label></td>
<td><asp:TextBox ID="TextBox5" runat="server" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:TextBox></td>
<td><asp:CustomValidator ID="CustomValidator9" runat="server" ErrorMessage="Enter Valid Email ID" ControlToValidate="TextBox5" ValidateEmptyText="True" ClientValidationFunction="EmailValidator" ValidationGroup="checkout" Font-Size="Medium"></asp:CustomValidator><br />
 <asp:CustomValidator ID="CustomValidator10" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox5" ValidateEmptyText="True" ClientValidationFunction="RequiredValidate" ValidationGroup="checkout" Font-Size="Medium"></asp:CustomValidator>
 </td>

</tr>

<tr>
<td><asp:Label ID="Label6" runat="server" Text="Phone Number"  Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label></td>
<td><asp:TextBox ID="TextBox6" runat="server" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:TextBox></td>
<td><asp:CustomValidator ID="CustomValidator11" runat="server" ErrorMessage="Enter Valid Mobile Number" ControlToValidate="TextBox6" ValidateEmptyText="True" ClientValidationFunction=" MobileValidator" ValidationGroup="checkout" Font-Size="Medium"></asp:CustomValidator><br />
 <asp:CustomValidator ID="CustomValidator12" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox6" ValidateEmptyText="True" ClientValidationFunction="RequiredValidate" ValidationGroup="checkout" Font-Size="Medium"></asp:CustomValidator>
 </td>
 
</tr>

<tr>
<td><asp:Label ID="Label7" runat="server" Text="Mode Of Payment"  Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label></td>
<td><asp:DropDownList ID="DropDownList1" runat="server" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30">
    <asp:ListItem>Online</asp:ListItem>
    <asp:ListItem>Cash On Delivery</asp:ListItem>
    </asp:DropDownList></td>
    <td></td>
    <br />
</tr>
<td colspan="3">
     <center>   <asp:LinkButton ID="PAY" ValidationGroup="checkout" runat="server" onclick="PAY_Click" Height="35"  Width="100" ForeColor="#003300" Font-Size="Large" Font-Names="Algerian" BorderStyle="Outset" BorderColor="#FF6666" BackColor="#FFFFCC" >ORDER</asp:LinkButton></center>
        </td>

</table>
</div>


</asp:Content>

