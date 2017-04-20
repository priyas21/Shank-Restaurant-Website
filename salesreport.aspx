<%@ Page Title="" Language="C#" MasterPageFile="~/SecondMasterPage.master" AutoEventWireup="true" CodeFile="salesreport.aspx.cs" Inherits="salesreport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html>
<body>

<center><h1 style="text-decoration:underline;text-shadow:black; color:Maroon; font-weight:bold; font-size:xx-large;">SALES REPORTS</h1></center>

<div style="float:left;  ">
<h1>Daily Sales</h1>
    <asp:Label ID="Label1" runat="server" Text="Daily Total Sales:->"  Font-Size="X-Large" ForeColor="Black" Font-Names="Algerian" ></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label>
    <asp:GridView ID="todaysales" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="Black" BackColor="HighlightText" Width="1029px" BorderStyle="Dashed" BorderWidth="10px" Font-Size="Large" Font-Names="Comic Sans MS">
        <Columns>
            <asp:BoundField DataField="Item_Name" HeaderText="ITEM NAME" />
            <asp:BoundField DataField="Item_Price" HeaderText="ITEM PRICE" />
            <asp:BoundField DataField="qty" HeaderText="QUANTITY" />
            <asp:BoundField DataField="createdate" HeaderText="DATE and Time" />
            
            </Columns>
    </asp:GridView>
    
    <br />
    </div>
    
    <div style="float:left; padding-left:290px;">
    <h1>Weekly Sales</h1>
    <asp:Label ID="Label3" runat="server" Text="Weekly Total Sales:->"  Font-Size="X-Large" ForeColor="Black" Font-Names="Algerian" ></asp:Label>
    <asp:Label ID="Label4" runat="server" Text="" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label>
    
    
    <asp:GridView ID="WeeklySales" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="Black" BackColor="HighlightText" Width="1029px" BorderStyle="Dashed" BorderWidth="10px" Font-Size="Large" Font-Names="Comic Sans MS">
     <Columns>
            <asp:BoundField DataField="Item_Name" HeaderText="ITEM NAME" />
            <asp:BoundField DataField="Item_Price" HeaderText="ITEM PRICE" />
            <asp:BoundField DataField="qty" HeaderText="QUANTITY" />
            <asp:BoundField DataField="createdate" HeaderText="DATE and Time" />
            
            </Columns>
   
    </asp:GridView>
        
    
    </div>
    
    <br />
    <br />
<div style=" float:left; clear:both;">
<h1>Monthly Sales</h1>
<asp:Label ID="Label5" runat="server" Text="Monthky Total Sales:->"  Font-Size="X-Large" ForeColor="Black" Font-Names="Algerian" ></asp:Label>
    <asp:Label ID="Label6" runat="server" Text="" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label>
    
    <asp:GridView ID="MonthlySales" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="Black" BackColor="HighlightText" Width="1029px" BorderStyle="Dashed" BorderWidth="10px" Font-Size="Large" Font-Names="Comic Sans MS">
    <Columns>
            <asp:BoundField DataField="Item_Name" HeaderText="ITEM NAME" />
            <asp:BoundField DataField="Item_Price" HeaderText="ITEM PRICE" />
            <asp:BoundField DataField="qty" HeaderText="QUANTITY" />
            <asp:BoundField DataField="createdate" HeaderText="DATE and Time" />
            
            </Columns>
    </asp:GridView>

</div>
<br />
    <br />

<div style=" float:left;  padding-left:290px;">
<h1>Yearly Sales</h1>

<asp:Label ID="Label7" runat="server" Text="Yearly Total Sales:->"  Font-Size="X-Large" ForeColor="Black" Font-Names="Algerian" ></asp:Label>
    <asp:Label ID="Label8" runat="server" Text="" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label>
    
    <asp:GridView ID="YearlySales" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="Black" BackColor="HighlightText" Width="1029px" BorderStyle="Dashed" BorderWidth="10px" Font-Size="Large" Font-Names="Comic Sans MS">
    <Columns>
            <asp:BoundField DataField="Item_Name" HeaderText="ITEM NAME" />
            <asp:BoundField DataField="Item_Price" HeaderText="ITEM PRICE" />
            <asp:BoundField DataField="qty" HeaderText="QUANTITY" />
            <asp:BoundField DataField="createdate" HeaderText="DATE and Time" />
            
            </Columns>
    </asp:GridView>



</div>
</body>
</html>
</asp:Content>

