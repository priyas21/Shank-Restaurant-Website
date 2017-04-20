<%@ Page Title="" Language="C#" MasterPageFile="~/SecondMasterPage.master" AutoEventWireup="true" CodeFile="viewcart.aspx.cs" Inherits="viewcart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div  class="bcontent">
<!--<asp:label id="LblTol" runat="server" text="Label"></asp:label>
        <asp:ListBox ID="Lstcart" runat="server"></asp:ListBox>
<asp:label id="Label1" runat="server" text="Label"></asp:label>-->
<br /><br /><br />
    
  <center>  <asp:GridView ID="GridView1" DataKeyNames="DishID" runat="server" CellPadding="4" ForeColor="Black" Width="1029px" BorderStyle="Dashed" BorderWidth="10px" Font-Size="Large" Font-Names="Comic Sans MS" BackColor="HighlightText" 
        AutoGenerateColumns="False" onrowdeleting="GridView1_RowDeleting">
        <Columns>
            <asp:BoundField DataField="DishName" HeaderText="DISH NAME"  HeaderStyle-Font-Size="Larger" />
            <asp:BoundField DataField="DishPrice" HeaderText="DISH PRICE"  HeaderStyle-Font-Size="Larger" />
                        <asp:BoundField DataField="qty" HeaderText="DISH Qty"  HeaderStyle-Font-Size="Larger" />
            <asp:CommandField ShowDeleteButton="True"  ItemStyle-ForeColor="Brown" />
        </Columns>
    </asp:GridView></center
    <br /><br /><br />
   <center> <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" Height="50"  Width="150" ForeColor="#003300" Font-Size="Large" Font-Names="Algerian" BorderStyle="Outset" BorderColor="#FF6666" BackColor="#FFFFCC" >CHECK OUT</asp:LinkButton></center>
    
</asp:Content>

