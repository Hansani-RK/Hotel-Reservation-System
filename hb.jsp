<html>
	<head>
	</head>
	<body>
		<%! int p,q,v,v1,v2;%>
		
		<%
			p=Integer.parseInt(request.getParameter("meb"));
			q=Integer.parseInt(request.getParameter("ac"));
			r=Integer.parseInt(request.getParameter("nac"));
		
		
			v1=q*5000;
			v2=r*3000;
			v=v1+v2;
		
			
			%>
			
			
		<br>
			
		<form>
<table align="center" width="500px" border="1px" background="img/i2.jpg" >
<tr><td width="250px">

<p align="center"><font face="Verdana, Geneva, sans-serif" size="5px">Cost for rooms</font></p>


<table><tr>

<td></td><td ><b><p id="showtitle"></p></b></td><td width="300px"><b><font face="Adobe Garamond Pro Bold" id="nfield" size="4px">&nbsp;</font></font>
</td><td align="right">Date:-<%(new java.util.Date()).toLocalString()%></td><td align="right"><p id="showdate"></p></td>

</tr></table>




<table width="500px">


<tr height="50px">
<td>Hotel Name :-</td><td align="center"><hr><input type="text" id="hotel_name"  size="40px"><hr /></td>
</tr>

<tr>
<td width="250px">Number of members:-</td><td width="250px"><input type="text" id="rcost" value="<%=p%>"></td>
</tr></table>


<table align="center" width="500px">

<tr><td>

</tr><tr height="50px">
<td>A/C Room cost :-</td><td align="center"><hr><input type="text" id="rcost" value="<%=v1%>"></td>
</tr>
</tr><tr height="50px">
<td>Non A/C Room cost :-</td><td align="center"><hr><input type="text" id="rcost" value="<%=v2%>"></td>
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
	
		
	
	</body>  

</html>