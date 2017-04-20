<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SecondMasterPage.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="CSSTableGenerator">
<table><tr>
<td align="center" colspan="3"><asp:Label ID="Label1" runat="server" Text="Add Category" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label></td>

</tr>
  <tr>
  <td><asp:Label ID="Label2" runat="server" Text="Category Name" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian" ></asp:Label></td>
<td> <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:TextBox></td>
<td><asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox2" ValidateEmptyText="True" ClientValidationFunction="RequiredValidate" ValidationGroup="add" Font-Size="Medium"></asp:CustomValidator><br />
<asp:CustomValidator ID="CustomValidator7" runat="server" ErrorMessage="Should Have Aplhabets,numbers or special characters Only" ControlToValidate="TextBox2" ValidationGroup="add" ValidateEmptyText="True" ClientValidationFunction="AlphaNumericValidator" Font-Size="Medium"></asp:CustomValidator>
</td>
</tr>

<tr>  
<td><asp:Label ID="Label3" runat="server" Text="Catergory Description" ForeColor="Black" Font-Names="Algerian" Font-Size="Medium"></asp:Label></td>
<td>  <asp:TextBox ID="TextBox3" TextMode="MultiLine" runat="server" Font-Size="Medium" Font-Names="Comic Sans MS" BorderStyle="Solid" BorderColor="Black" Height="100" Width="250"></asp:TextBox></td>
<td><asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox3" ValidateEmptyText="True" ClientValidationFunction="RequiredValidate" ValidationGroup="add" Font-Size="Medium"></asp:CustomValidator><br />
<asp:CustomValidator ID="CustomValidator3" runat="server" ErrorMessage="Should Have Aplhabets,Numbers or special characters Only" ControlToValidate="TextBox3" ClientValidationFunction="AlphaNumericValidator" ValidationGroup="add" ValidateEmptyText="True" Font-Size="Medium"></asp:CustomValidator> </td>
</tr>

<tr>
<td> <asp:Label ID="Label4" runat="server" Text="Status" ForeColor="Black" Font-Size="Medium" Font-Names="Algerian"></asp:Label></td>
<td colspan="2"><asp:TextBox ID="TextBox1" runat="server" Visible="true" Enabled="false"></asp:TextBox>    </td>
</tr>

<tr>
<td colspan="2">
  <center> <asp:Button ID="Button1" runat="server" Text="ADD" ValidationGroup="add"
          onclick="Button1_Click" Height="35"  Width="100" ForeColor="#003300" Font-Size="Large" Font-Names="Algerian" BorderStyle="Outset" BorderColor="#FF6666" BackColor="#FFFFCC" /></center>
  <br /> &nbsp&nbsp
   <center> <asp:Label ID="Label5" runat="server" Text="" ForeColor="Black" Font-Names="Algerian" Font-Size="Medium"></asp:Label></center>        
</td>
</tr>
</table>
    
</div>
</asp:Content>

