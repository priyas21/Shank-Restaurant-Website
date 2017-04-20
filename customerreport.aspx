<%@ Page Title="" Language="C#" MasterPageFile="~/SecondMasterPage.master" AutoEventWireup="true" CodeFile="customerreport.aspx.cs" Inherits="customerreport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="First Name" />
            <asp:BoundField DataField="LastName" HeaderText="Last Name" />
            <asp:BoundField DataField="EmailID" HeaderText="Email ID" />
            <asp:BoundField DataField="NoOfTimesOrdered" 
                HeaderText="No of Times Customer Ordered" />
        </Columns>
    </asp:GridView>
</asp:Content>

