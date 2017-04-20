<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SecondMasterPage.master" AutoEventWireup="true" CodeFile="Dishes.aspx.cs" Inherits="Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="CSSTableGenerator">
<table border="1">
<tr>
<td colspan="3">
    <asp:Label ID="Label2" runat="server" Text="Dishes"></asp:Label></td>

</tr>
<tr>
    <td><asp:Label ID="Label1" runat="server" Text="Category Name" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label></td>
    <td><asp:DropDownList ID="DropDownList2" runat="server" 
            onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
            AutoPostBack="True" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:DropDownList></td>
    </tr>
  
<tr>  
<td><asp:Label ID="Label3" runat="server" Text="Dish Name" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label></td>
<td><asp:DropDownList ID="DropDownList1" runat="server" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30">
</asp:DropDownList></td>
</tr>
<tr>
<td><asp:Label ID="Label4" runat="server" Text="Dish Price" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label></td>
<td><asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:TextBox></td>
</tr>
<tr>
<td><asp:Label ID="Label5" runat="server" Text="Dish Description" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label></td>
<td> <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Font-Size="Medium" Font-Names="Comic Sans MS" BorderStyle="Solid" BorderColor="Black" Height="100" Width="250"></asp:TextBox></td>
</tr>
<tr>
<td><asp:Label ID="Label6" runat="server" Text="Status" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label></td>
<td>
    <asp:TextBox ID="TextBox2" runat="server" Visible="true" Enabled="False"></asp:TextBox></td>
</tr>

</table>
    

</div>


</asp:Content>

