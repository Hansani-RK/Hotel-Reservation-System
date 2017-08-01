<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>booking</title>

<link rel="stylesheet" type="text/css" href="css/booking.css" >


<script type="text/javascript">

function one()
{
with (document.form1)
{rcost.value = + acr.value*days.value*20 + nacr.value*days.value*10};

//with (document.form1)
//{mcost.value = +members.value*mdays.value*days.value*me.value};

with (document.form1)
{total.value =  acr.value*days.value*20 + nacr.value*days.value*10 
    //+members.value*mdays.value*days.value*me.value
};

{var x = document.getElementById("name").value;
    document.getElementById("nfield").innerHTML = x;}


 
    {var y = document.getElementById("idate").value;
    document.getElementById("showdate").innerHTML = y;}

{var z = document.getElementById("title").value;
    document.getElementById("showtitle").innerHTML = z;}

{var rx = document.getElementById("hname").value;
    document.getElementById("hotel_name").value = rx;}



{
    var ac = document.forms[0];
    var txt = "";
    var i;
    for (i = 0; i < ac.length; i++) {
        if (ac[i].checked) {
            txt = txt + ac[i].value + " ";
        }
    }
    document.getElementById("order").value = "Room No.: " + txt;
}









/*ERROR CORRECTIONS*/
var totalmem=parseInt(document.getElementById("members").value);
var acmem=parseInt(document.getElementById("acr").value);
var nacmem=parseInt(document.getElementById("nacr").value);

var s=acmem+nacmem;
if(totalmem==s)
{}
else
{
	alert("ERROR..!Totel members & room members are not matched!");
	}	
	

}






function getac()
 {


var g=document.getElementById("acr").value;
    document.getElementById("gets").innerHTML = Math.ceil(g/5);

}

function getnac()
 {


var h=document.getElementById("nacr").value;
    document.getElementById("gets2").innerHTML = Math.ceil(h/5);

}


</script>

</head>
	
	<body bgcolor="#99FFFF"  background="LOGOS/back.jpg">

<table width="100%" align="center" >
<tr><td >

<table class="main_table" align="center" >
<tr><td width="950px" bgcolor="#FFFFFF" background="LOGOS/back table.png">

<div id="nav">
	<a href="home.html"><img src="NAVIGATION/home.jpg" height="80" width="auto" id=""  onmousemove="src='NAVIGATION/home select.jpg'" onmouseout="src='NAVIGATION/home.jpg'"/></a>
    
    
   <a href="hotels.html"> <img src="NAVIGATION/services.jpg" height="80" width="auto" id="story" onmousemove="src='NAVIGATION/services select.jpg'" onmouseout="src='NAVIGATION/services.jpg'"  /></a>
    
    
   
    
    
   <a href="booking.html"> <img src="NAVIGATION/booking select.jpg" height="80" width="auto" id="blogs"/></a>
    
    
  <a href="contact.html">  <img src="NAVIGATION/contact.jpg"  height="80" width="auto" id="comments" onmousemove="src='NAVIGATION/contact select.jpg'" onmouseout="src='NAVIGATION/contact.jpg'"/></a>
  </div>
	
	
		<%@page import="java.sql.*"%>
		<%! String cna,add,dat; int v1,v2,v,no,mem,ac,non,day;%>
		
		<%
			
			cna=request.getParameter("nam");
			add=request.getParameter("addr");
			
			no=Integer.parseInt(request.getParameter("cont"));
			dat=request.getParameter("dt");
			mem=Integer.parseInt(request.getParameter("mem"));
			
			ac=Integer.parseInt(request.getParameter("acroom"));
			non=Integer.parseInt(request.getParameter("room"));
			
			day=Integer.parseInt(request.getParameter("n_days"));
					
			try{
			
			Class.forName("com.mysql.jdbc.Driver");
			String path="jdbc:mysql://localhost/nuwaraEliya";
			Connection cn;
			Statement st;
			ResultSet rs;
			
			cn=DriverManager.getConnection(path,"root","");
			st=cn.createStatement();
			
			
			st.executeUpdate("insert into client(c_name,address,contact,in_date,no_mem,ac_room,non_room,no_days) values('"+cna+"','"+add+"','"+no+"','"+dat+"','"+mem+"','"+ac+"','"+non+"','"+day+"')");
			
			
			
			
			
						
			}
			
			
			catch(ClassNotFoundException e)
			{out.println(e.getMessage());}
			
			catch(SQLException e)
			{out.println(e.getMessage());}
			
		v1=ac*5000;
		v2=non*3000;
		v=v1+v2;
			
		%>
		
		
		

<form>
<table align="center" width="500px" border="1px" background="img/i2.jpg" >
<tr><td width="250px">

<p align="center"><font face="Verdana, Geneva, sans-serif" size="5px">Cost for rooms</font></p>


<table><tr>

<td></td><td ><b><p id="showtitle"></p></b></td><td width="300px"><b><font face="Adobe Garamond Pro Bold" id="nfield" size="4px">&nbsp;</font></font>
</td><td align="right">Date:-</td><td align="right"><p id="showdate"></p></td>

</tr></table>




<table width="500px">





<tr>
<td width="250px">Room cost(A/C):-</td><td width="250px"><input type="text" id="order" size="40px"  name="rn" value="<%=ac%>"></td>
</tr></table>


<table align="center" width="500px">

<tr><td>

</tr><tr height="50px">
<td>Room cost(non) :-</td><td align="center"><hr><input type="text" id="rcost" name="rc" value="<%=non%>" ></td>
</tr>
</tr>




</tr><tr height="50px">
<td><b>TOTAL ($) :-</b></td><td align="center"><hr><input type="text" id="total" value="<%=v%>">
</td>


</tr>
<tr><td align="center" colspan="2"><p align="center"><font face="Informal Roman" size="6px">Thank you...! </font></p><p align="right"></p></td></tr>
</table>






</td></td>
</table>


</form>


<div align="center">
<br />
<a href="www.facebook.com"><img src="img/social links/1.png"  width="70" /></a>

<a href="www.twitter.com"><img src="img/social links/2.png"  width="70" /></a>

<a href="www.google.com"><img src="img/social links/3.png"  width="70" /></a>

<a href="www.instragram.com"><img src="img/social links/4.png"  width="70" /></a>

</div>




</td></tr></table>
</td></tr></table>



			

	</body>  

</html>