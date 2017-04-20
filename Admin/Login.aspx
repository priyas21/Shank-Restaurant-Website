<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SecondMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="CSSTableGenerator" >
<table>
<tr>
<td colspan="3" style="text-align:center;font-weight:bold;font-size:large;">Log IN</td>
</tr>

 <tr>
 <td> <asp:Label ID="Label1" runat="server" Text="Username" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian" ></asp:Label></td>
 <td><asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:TextBox> &nbsp 
  <asp:Label ID="Label12" runat="server"  Text=""  Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label> </td>
 <td><asp:CustomValidator ID="CustomValidator12" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox1" ValidateEmptyText="True" ClientValidationFunction="RequiredValidate" ValidationGroup="loginValidate"  Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:CustomValidator>
 <br /></td>
 </tr> 
 
     <tr>
    <td><asp:Label ID="Label2" runat="server" Text="Password" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian" ></asp:Label></td> 
    <td><asp:TextBox ID="TextBox2" TextMode="Password" runat="server" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:TextBox> &nbsp
    <asp:Label ID="Label13" runat="server" Text=""  Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:Label></td>
    <td><asp:CustomValidator ID="CustomValidator13" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox2" ValidateEmptyText="True" ClientValidationFunction="RequiredValidate" ValidationGroup="loginValidate"  Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:CustomValidator><br />
        </td>
    </tr>
    
    <tr>    
    <td><asp:Label ID="Label10" runat="server" Text="Enter Your EmaiID" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian" ></asp:Label></td>
    <td><asp:TextBox ID="TextBox10" runat="server" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:TextBox> 
    <asp:CustomValidator ID="CustomValidator14" runat="server" ErrorMessage="Enter Valid Email ID" ControlToValidate="TextBox10" ValidateEmptyText="True" ClientValidationFunction="EmailValidator" ValidationGroup="fp"  Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:CustomValidator><br />
    <asp:CustomValidator ID="CustomValidator15" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox10" ValidateEmptyText="True" ClientValidationFunction="RequiredValidate" ValidationGroup="fp"  Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:CustomValidator>
    </td>
    <td><asp:Button ID="Button1" runat="server" ValidationGroup="fp" 
            Text="Forgot Password" onclick="Button1_Click" Height="40"  Width="200" ForeColor="#003300" Font-Size="Large" Font-Names="Algerian" BorderStyle="Outset" BorderColor="#FF6666" BackColor="#FFFFCC"/><br />
        <asp:Label ID="Label11" runat="server" Visible="false" Text="Label" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian" ></asp:Label>
            </td>            
    </tr>
    
    <tr>
        <td colspan="3" align="center"> <asp:Button ID="LogIn" runat="server" Text="Log IN" ValidationGroup="loginValidate"
                onclick="LogIn_Click" Height="35"  Width="100" ForeColor="#003300" Font-Size="Large" Font-Names="Algerian" BorderStyle="Outset" BorderColor="#FF6666" BackColor="#FFFFCC" /> </td>
            </tr>
    </table><br />
    
    
    
    <!--Sign Up-->
    
    
    
    </div>
    <br /><br />
    <div class="CSSTableGenerator" ><!-- class="col-xs-5" style="width:100%;height:auto;" >-->
<table border="1" >
<tr>
<td  colspan="3" style="text-align:center;font-weight:bold;font-size: large;">Sign UP</td>

</tr>
<tr>
    <td><asp:Label ID="Label8" runat="server" Text="First Name" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian" ></asp:Label></td>
    <td><asp:TextBox ID="TextBox8" runat="server" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30" ></asp:TextBox></td>
    <td><asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox8" ValidateEmptyText="True" ClientValidationFunction="RequiredValidate" ValidationGroup="login" Font-Size="Medium"></asp:CustomValidator><br />
        <asp:CustomValidator ID="CustomValidator7" runat="server" ErrorMessage="Should Have Aplhabets Only" ControlToValidate="TextBox8" ClientValidationFunction="AlphabetsValidator" ValidationGroup="login" ValidateEmptyText="True" Font-Size="Medium"></asp:CustomValidator>
    </td>
    
</tr>
<tr>
    <td><asp:Label ID="Label9" runat="server" Text="Last Name" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian" ></asp:Label></td>
    <td><asp:TextBox ID="TextBox9" runat="server" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:TextBox></td>
    <td>
        <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox9" ValidateEmptyText="true" ClientValidationFunction="RequiredValidate" ValidationGroup="login" Font-Size="Medium"></asp:CustomValidator><br />
        <asp:CustomValidator ID="CustomValidator8" runat="server" ErrorMessage="Should Have Aplhabets Only" ControlToValidate="TextBox9" ClientValidationFunction="AlphabetsValidator" ValidationGroup="login" ValidateEmptyText="True" Font-Size="Medium"></asp:CustomValidator></td>
</tr>
 <tr>
     <td><asp:Label ID="Label3" runat="server" Text="Username" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian" ></asp:Label></td>
    <td><asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:TextBox></td>
    <td><asp:CustomValidator ID="CustomValidator3" runat="server" ErrorMessage="Should Be AlphaNumeric" ControlToValidate="TextBox3" ValidateEmptyText="True" ClientValidationFunction="AlphaNumericValidator" ValidationGroup="login" Font-Size="Medium"></asp:CustomValidator><br />  
    </td> 
    
 </tr>
 <tr>
 <td><asp:Label ID="Label4" runat="server" Text="Password" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"  ></asp:Label></td>
 <td><asp:TextBox ID="TextBox4" runat="server" TextMode="Password" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:TextBox></td>
 <td><asp:CustomValidator ID="CustomValidator4" runat="server" ErrorMessage="Should Be AlphaNumeric" ControlToValidate="TextBox4" ValidateEmptyText="True" ClientValidationFunction="AlphaNumericValidator" ValidationGroup="login"  Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"></asp:CustomValidator ><br />
     <!--<asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Password Must be of 8 Characters" ValidationGroup="login" ControlToValidate="TextBox4" Font-Size="Medium"></asp:RangeValidator>-->
 </td>
 </tr>
 <tr>
 <td><asp:Label ID="Label5" runat="server" Text="Re-Type Password" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian"  ></asp:Label></td>
 <td><asp:TextBox ID="TextBox5" runat="server" TextMode="Password" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:TextBox></td>
 <td><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Doesn't Match" ValidationGroup="login" ControlToValidate="TextBox5" ControlToCompare="TextBox4" Display="Static" Font-Size="Medium"></asp:CompareValidator><br />
 <asp:CustomValidator ID="CustomValidator9" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox5" ValidateEmptyText="True" ClientValidationFunction="RequiredValidate" ValidationGroup="login" Font-Size="Medium"></asp:CustomValidator>
 </td>
 </tr>
 <tr>
 <td><asp:Label ID="Label6" runat="server" Text="Email ID" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian" ></asp:Label></td>
 <td><asp:TextBox ID="TextBox6" runat="server" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:TextBox></td>
 <td><asp:CustomValidator ID="CustomValidator5" runat="server" ErrorMessage="Enter Valid Email ID" ControlToValidate="TextBox6" ValidateEmptyText="True" ClientValidationFunction="EmailValidator" ValidationGroup="login" Font-Size="Medium"></asp:CustomValidator><br />
 <asp:CustomValidator ID="CustomValidator10" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox6" ValidateEmptyText="True" ClientValidationFunction="RequiredValidate" ValidationGroup="login" Font-Size="Medium"></asp:CustomValidator>
 </td>
 </tr>
 <tr>
 <td><asp:Label ID="Label7" runat="server" Text="Mobile Number" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian" ></asp:Label></td>
 <td><asp:TextBox ID="TextBox7" runat="server" BorderStyle="Solid" BorderColor="Black" Font-Names="Comic Sans MS" Font-Size="Medium" Width="250" Height="30"></asp:TextBox></td>
 <td><asp:CustomValidator ID="CustomValidator6" runat="server" ErrorMessage="Enter Valid Mobile Number" ControlToValidate="TextBox7" ValidateEmptyText="True" ClientValidationFunction="MobileValidator" ValidationGroup="login" Font-Size="Medium"></asp:CustomValidator><br />
 <asp:CustomValidator ID="CustomValidator11" runat="server" ErrorMessage="Cannot Be Empty" ControlToValidate="TextBox7" ValidateEmptyText="True" ClientValidationFunction="RequiredValidate" ValidationGroup="login" Font-Size="Medium"></asp:CustomValidator>
 </td>
 </tr>
 <tr>
 <td></td>
 <td><asp:Button ID="SignUp" runat="server" Text="SIGN UP" ValidationGroup="login"
         onclick="SignUp_Click" Height="35"  Width="100" ForeColor="#003300" Font-Size="Large" Font-Names="Algerian" BorderStyle="Outset" BorderColor="#FF6666" BackColor="#FFFFCC"/></td>
 <td>
     <asp:Label ID="Label14" runat="server" Text="" Font-Size="Medium" ForeColor="Black" Font-Names="Algerian" ></asp:Label></td>
 </tr>
 
 </table>   
    
</div>  
<div style="clear:both"></div>  


    
    
</asp:Content>

