<%@ Page Title="" Language="C#" MasterPageFile="~/SecondMasterPage.master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
.menu li
{
    display:inline-block;
    width:250px;
    border:2px solid black;
    border-radius:10px;
    margin:10px;
    padding:10px;
   
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <asp:DropDownList ID="ddlcategories" runat="server" AutoPostBack="True"  BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="X-Large" ForeColor="BurlyWood" Font-Bold="true" Width="350" Height="45" 
        onselectedindexchanged="ddlcategories_SelectedIndexChanged">
        </asp:DropDownList> &nbsp&nbsp&nbsp<asp:Label ID="Label2" runat="server" Text="" Font-Size="X-Large" ForeColor="Black" Font-Names="Algerian" Font-Bold="True"></asp:Label>
<div class="CSSTableGenerator">
  <asp:ListView DataKeyNames="DishID" runat="server" OnSelectedIndexChanging="ListViewi_selectchanging" ID="ListView1">
   <LayoutTemplate>
    <ul class="menu">
        
      <li runat="server" id="itemPlaceholder" ></li>
    </ul>
  </LayoutTemplate>
  <ItemTemplate>
    <li id="l1" runat="server">
        <%-- Data-bound content. --%>
        <h2><asp:Label ID="NameLabel" runat="server" 
          Text='<%#Eval("DishName") %>' /></h2>
              <label>Rs<asp:Label ID="Label1" runat="server" 
          Text='<%#Eval("DishPrice") %>' />/-</label>
          <br />
        <asp:LinkButton ID="LinkButton1" CommandName="Select" runat="server" Font-Size=Medium Font-Bold=true ForeColor=Black>Add To Cart</asp:LinkButton>
    </li>
   
  </ItemTemplate>
</asp:ListView>

    </div>
</asp:Content>

