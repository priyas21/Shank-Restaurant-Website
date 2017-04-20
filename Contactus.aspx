<%@ Page Title="" Language="C#" MasterPageFile="~/SecondMasterPage.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<!DOCTYPE html>
<html>
       <!--content-->
       <body>
<div class="global">
    <div class="container">
        <div class="row">
            <article class="col-lg-12 col-md-12 col-sm-12">
                <figure class="map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d13584.962301026817!2d74.85911300000001!3d31.65463729342368!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1smaps+url+of+shankh+restaurant+amritsar!5e0!3m2!1sen!2sin!4v1399748476181" width="600" height="450" frameborder="0" style="border:0"></iframe>
                    
                </figure>
            </article>
        </div>
    </div>
    <section class="formBox">
        <div class="container">
            <div class="row">
                <article class="col-lg-4 col-md-4 col-sm-4">
                    <h1>Address</h1>
                    <h2>Shankh Multi Cuisine Veg Restaurant<h2> 
                     <h3>C-Block Market Complex <br />C Block, Ranjit Avenue
                     <br />Amritsar, Punjab 143001</h3>
                    <div class="info">
                        <h3><span>Phone:</span>0183-5070710/11/12</h3>
                        <h3>E-mail: <a href="mailto:shankhrestaurant@yahoo.com?Subject=Hello" target="_top">shankhrestaurant@yahoo.com</a></h3>
                    </div>
                </article>
                <article class="col-lg-8 col-md-8 col-sm-8">
                    <h2>Get in touch</h2>
                   
                        
                        <div class="CSSTableGenerator">
                            <table>
                            <tr>
                            <td colspan="3"></td>
                                                     
                            </tr>
                            
                                <td><asp:Label ID="Label1" runat="server" Text="Name *" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label></td>
                                <td><asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:TextBox></td>
                                 <td><asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox1" ValidateEmptyText="True" ClientValidationFunction="RequiredValidate" ValidationGroup="contactus" Font-Size="Medium"></asp:CustomValidator><br />
                                 <asp:CustomValidator ID="CustomValidator7" runat="server" ErrorMessage="Should Have Aplhabets Only" ControlToValidate="TextBox1" ClientValidationFunction="AlphabetsValidator" ValidationGroup="contactus" ValidateEmptyText="True" Font-Size="Medium"></asp:CustomValidator> </td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="Label2" runat="server" Text="Email *" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label></td>
                                <td><asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:TextBox></td>
                           <td><asp:CustomValidator ID="CustomValidator5" runat="server" ErrorMessage="Enter Valid Email ID" ControlToValidate="TextBox2" ValidateEmptyText="True" ClientValidationFunction="EmailValidator" ValidationGroup="contactus" Font-Size="Medium"></asp:CustomValidator><br />
                        <asp:CustomValidator ID="CustomValidator10" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox2" ValidateEmptyText="True" ClientValidationFunction="RequiredValidate" ValidationGroup="contactus" Font-Size="Medium"></asp:CustomValidator>
                            </td>
                            </tr>
                            
                            <tr>
                        <td><asp:Label ID="Label3" runat="server" Text="Phone Number *" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label></td>
                        <td><asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:TextBox></td>
                            <td><asp:CustomValidator ID="CustomValidator6" runat="server" ErrorMessage="Enter Valid Mobile Number" ControlToValidate="TextBox3" ValidateEmptyText="True" ClientValidationFunction=" MobileValidator" ValidationGroup="contactus" Font-Size="Medium"></asp:CustomValidator><br />
                        <asp:CustomValidator ID="CustomValidator11" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox3" ValidateEmptyText="True" ClientValidationFunction="RequiredValidate" ValidationGroup="contactus" Font-Size="Medium"></asp:CustomValidator>
                            </td>
                            </tr>
                        
                        <tr>
                        <td><asp:Label ID="Label5" runat="server" Text="Subject *" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label></td>
                        <td><asp:TextBox ID="TextBox5" runat="server" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:TextBox></td>
                  <td><asp:CustomValidator ID="CustomValidator3" runat="server" ErrorMessage="Should Be AlphaNumeric" ControlToValidate="TextBox5" ValidateEmptyText="True" ClientValidationFunction="AlphaNumericValidator" ValidationGroup="contactus" Font-Size="Medium"></asp:CustomValidator>
                       <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox5" ValidateEmptyText="True" ClientValidationFunction="RequiredValidate" ValidationGroup="contactus" Font-Size="Medium"></asp:CustomValidator></td>                        
                        </tr>
                        
                        <tr>
                        <td><asp:Label ID="Label4" runat="server" Text="Message *" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Font-Size="Medium" Font-Names="Comic Sans MS" BorderStyle="Solid" BorderColor="Black" Height="100" Width="250"></asp:TextBox></td>
                            <td><asp:CustomValidator ID="CustomValidator4" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox4" ValidateEmptyText="True" ClientValidationFunction="RequiredValidate" ValidationGroup="contactus" Font-Size="Medium"></asp:CustomValidator></td>                        
                        </tr>
                        
                        <tr>
                            <td><asp:Button ID="Button1" runat="server" ValidationGroup="contactus" Text="Submit" onclick="Button1_Click" Height="35"  Width="100" ForeColor="#003300" Font-Size="Large" Font-Names="Algerian" BorderStyle="Outset" BorderColor="#FF6666" BackColor="#FFFFCC"/></asp:Button></td>
                            <td colspan="2"><asp:Label ID="Label6" runat="server" Text="" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label></td></tr>
                            <h2>*Required fields</h2>
                            </table>
                        </div>  
                    
                </article>
            </div>
        </div>
    </section>
</div>
<!--footer-->
</asp:Content>

