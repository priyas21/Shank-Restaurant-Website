<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Start.aspx.cs" Inherits="Start" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<style>
    #myDIV
{
    

width:1600px;
height:588px;
background-color:Black;
border:1px solid black;
background:url("img/m1.jpg");

/*animation:mymove 5s infinite;*/
/*Safari and Chrome:*/
-webkit-animation:mymove 5s infinite;
}
 #d1
	{ 
	    
	margin:400px 400px;
	height:200px;
	width:250px;
	float:left;
	}   
	#d2
	{
	    margin :250px 250px;
	    float:left;
	}
	
</style>
    <title>Shank</title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="myDIV">
                                                                                                                                                                                 
       
        <div id="d1">
            <asp:ImageButton ID="ImageButton1" runat="server" AlternateText="ADMIN LOGIN" ImageAlign="Middle" ImageUrl="img/Admin.gif" />
            </div>
            <div id="d2">
            <asp:ImageButton ID="ImageButton2" runat="server" AlternateText="WELCOME TO SHANK" CssClass="btn" />               
            
        </div>
    </div>
    </form>
</body>
</html>
