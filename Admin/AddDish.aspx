<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SecondMasterPage.master" AutoEventWireup="true" CodeFile="AddDish.aspx.cs" Inherits="AddDish" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="CSSTableGenerator">
<table>
<tr>
<td colspan="3"></td>
</tr>

<tr>
    <td><asp:Label ID="Label1" runat="server" Text="Category Name" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label></td>
    <td colspan="2" ><asp:DropDownList ID="DropDownList1" runat="server" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30">
        <asp:ListItem>Select Category</asp:ListItem>
    </asp:DropDownList></td>
</tr>
<tr>
    <td><asp:Label ID="Label2" runat="server" Text="Dish Name" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label></td>    
    <td><asp:TextBox ID="TextBox1" runat="server" ToolTip="Dish Name" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:TextBox></td>
    <td><asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox1" ValidateEmptyText="True" ClientValidationFunction="RequiredValidate" ValidationGroup="adddish" Font-Size="Medium"></asp:CustomValidator></td>
</tr>
<tr>
    <td><asp:Label ID="Label3" runat="server" Text="Dish Price" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label></td>    
    <td><asp:TextBox ID="TextBox2" runat="server" ToolTip="Dish Price" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:TextBox></td>
    <td><asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox2" ValidateEmptyText="True" ClientValidationFunction="RequiredValidate" ValidationGroup="adddish" Font-Size="Medium"></asp:CustomValidator><br />
        <asp:CustomValidator ID="CustomValidator3" runat="server" ErrorMessage="Can Have Numbers Only" ClientValidationFunction="NumericValidator" ControlToValidate="TextBox2" ValidateEmptyText="True" ValidationGroup="adddish" Font-Size="Medium"></asp:CustomValidator>
    </td>
</tr>
<tr> 
    <td><asp:Label ID="Label4" runat="server" Text="Dish Description" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label> </td>
    <td><asp:TextBox ID="TextBox3" runat="server" ToolTip="Dish Description" TextMode="MultiLine" Font-Size="Medium" Font-Names="Comic Sans MS" BorderStyle="Solid" BorderColor="Black" Height="100" Width="250"></asp:TextBox></td>
    <td><asp:CustomValidator ID="CustomValidator4" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox3" ValidateEmptyText="True" ClientValidationFunction="RequiredValidate" ValidationGroup="adddish" Font-Size="Medium"></asp:CustomValidator></td>
 </tr>   
 <tr>
    <td  colspan="2" align="center"><asp:Button ID="Button1"  runat="server" Text="Add Dish" onclick="Button1_Click"  ValidationGroup="adddish" Height="35"  Width="100" ForeColor="#003300" Font-Size="Large" Font-Names="Algerian" BorderStyle="Outset" BorderColor="#FF6666" BackColor="#FFFFCC"/>
    &nbsp &nbsp <asp:Button ID="Button2" runat="server" Text="Back To Categories" 
            Height="35"  Width="250" ForeColor="#003300" Font-Size="Large" 
            Font-Names="Algerian" BorderStyle="Outset" BorderColor="#FF6666" 
            BackColor="#FFFFCC" onclick="Button2_Click" /></td>
    <td><asp:Label ID="Label5" runat="server" Text="" ForeColor="Black" Font-Size="Medium" Font-Names="Algerian"></asp:Label></td>
    </tr>    
</table>
</div>
</asp:Content>

