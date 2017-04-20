<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SecondMasterPage.master" AutoEventWireup="true" CodeFile="ManageDishes.aspx.cs" Inherits="ManageDishes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" DataKeyNames="DishID" CellPadding="4" ForeColor="Black" Width="1029px" BorderStyle="Groove" BorderWidth="5px" Font-Size="Large" Font-Names="Comic Sans MS" BackColor="WhiteSmoke"
        onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
        AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="DishName" HeaderText="Dish Name" HeaderStyle-Font-Size="Larger"/>
            <asp:BoundField DataField="DishPrice" HeaderText="Dish Price" HeaderStyle-Font-Size="Larger"/>
            <asp:BoundField DataField="DishDesc" HeaderText="Dish Description" HeaderStyle-Font-Size="Larger"/>
            <asp:CommandField ShowEditButton="True"  ItemStyle-ForeColor="Brown" />
            <asp:CommandField ShowDeleteButton="True"  ItemStyle-ForeColor="Brown" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Add New Dish" 
        onclick="Button1_Click"  Height="35"  Width="200" ForeColor="#003300" Font-Size="Large" Font-Names="Algerian" BorderStyle="Outset" BorderColor="#FF6666" BackColor="#FFFFCC" />
   &nbsp&nbsp&nbsp <asp:Button ID="Button2" runat="server" Text="Back" Height="35"  
        Width="100" ForeColor="#003300" Font-Size="Large" Font-Names="Algerian" 
        BorderStyle="Outset" BorderColor="#FF6666" BackColor="#FFFFCC" 
        onclick="Button2_Click" />
        
        &nbsp&nbsp&nbsp 
    <asp:Label ID="Label1" runat="server" Text="" ForeColor="Black" Font-Names="Algerian" Font-Size="Medium" ></asp:Label>
</asp:Content>

