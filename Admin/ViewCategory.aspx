<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SecondMasterPage.master" AutoEventWireup="true" CodeFile="ViewCategory.aspx.cs" Inherits="ViewCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" DataKeyNames="CatID" runat="server" CellPadding="4" ForeColor="Black" BackColor="HighlightText" Width="1029px" BorderStyle="Dashed" BorderWidth="10px" Font-Size="Large" Font-Names="Comic Sans MS"
        onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
        onselectedindexchanging="GridView1_SelectedIndexChanging" 
        AutoGenerateColumns="False" EditRowStyle-CssClass="follow_icon" 
        CssClass="holder">
        <Columns>
        
            <asp:BoundField DataField="CatName" HeaderText="Category Name" HeaderStyle-Font-Size="Larger" />
            <asp:BoundField DataField="CatDesc" HeaderText="Category Description"  HeaderStyle-Font-Size="Larger"/>
            <asp:CommandField ShowEditButton="True"  ItemStyle-ForeColor="Brown" />
            <asp:CommandField ShowDeleteButton="True" ItemStyle-ForeColor="Brown" />
            <asp:CommandField ShowSelectButton="True" ItemStyle-ForeColor="Brown" />
        </Columns>


    </asp:GridView><br />
    <asp:Button ID="Button1" runat="server" Text="Add More Categories" onclick="Button1_Click" Height="35"  Width="210" ForeColor="#003300" Font-Size="Large" Font-Names="Algerian" BorderStyle="Outset" BorderColor="#FF6666" BackColor="#FFFFCC"  />
    &nbsp&nbsp&nbsp<asp:Label ID="Label1" runat="server" Text="" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"   ></asp:Label>
</asp:Content>

