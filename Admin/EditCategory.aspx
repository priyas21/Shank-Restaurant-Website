<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SecondMasterPage.master" AutoEventWireup="true" CodeFile="EditCategory.aspx.cs" Inherits="EditCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="CSSTableGenerator">
<table>
<tr>
<td colspan="3"></td>
</tr>

<tr>
<td><asp:Label ID="Label1" runat="server" Text="Category ID" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian" ></asp:Label></td>
    <td colspan="2"><asp:TextBox ID="TextBox1" runat="server" Width="250"  BorderStyle="Outset" BorderColor="#FF6666" BackColor="Beige" Font-Size="Medium" Font-Names="Comic Sans MS" ></asp:TextBox></td>
    
</tr>
  <tr>
  <td><asp:Label ID="Label2" runat="server" Text="Category Name" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label></td>
<td> <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:TextBox></td>
<td><asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox2" ValidateEmptyText="True" ClientValidationFunction="RequiredValidate" ValidationGroup="editcat" Font-Size="Medium"></asp:CustomValidator><br />
<asp:CustomValidator ID="CustomValidator7" runat="server" ErrorMessage="Should Have Aplhabets Only" ControlToValidate="TextBox2" ValidationGroup="editcat" ValidateEmptyText="True" ClientValidationFunction="AlphaNumericValidator" Font-Size="Medium"></asp:CustomValidator>
</td>

    
</tr>
<tr>  
<td><asp:Label ID="Label3" runat="server" Text="Catergory Description" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian" ></asp:Label></td>
<td>  <asp:TextBox ID="TextBox3" TextMode="MultiLine" runat="server" Font-Size="Medium" Font-Names="Comic Sans MS" BorderStyle="Solid" BorderColor="Black" Height="100" Width="250"></asp:TextBox></td>
<td><asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox3" ValidateEmptyText="True" ClientValidationFunction="RequiredValidate" ValidationGroup="editcat" Font-Size="Medium"></asp:CustomValidator><br />
<asp:CustomValidator ID="CustomValidator3" runat="server" ErrorMessage="Should Have Aplhabets,Numbers or special characters Only" ControlToValidate="TextBox3" ClientValidationFunction="AlphaNumericValidator" ValidationGroup="editcat" ValidateEmptyText="True" Font-Size="Medium"></asp:CustomValidator> </td>

</tr>
<tr>
<td>
    <asp:Label ID="Label4" runat="server" Text="Status" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian" ></asp:Label></td>
    <td colspan="2">
        <asp:TextBox ID="TextBox4" runat="server" Visible ="true" Enabled="false"  BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:TextBox></td>
</tr>
<tr>
<td>
  <center> <asp:Button ID="Button1" runat="server" Text="Edit" ValidationGroup="editcat" 
          onclick="Button1_Click" Height="35"  Width="100" ForeColor="#003300" Font-Size="Large" Font-Names="Algerian" BorderStyle="Outset" BorderColor="#FF6666" BackColor="#FFFFCC" /></center>
&nbsp</td>
<td  colspan="2"><asp:Label ID="Label5" runat="server" Text="" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"  ></asp:Label></td>
</tr>
</table>
    

</div>

</asp:Content>

