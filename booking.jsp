<html>
	<head>
	</head>
	<body>
		<%! int p,q,v;%>
		
		<%
			p=Integer.parseInt(request.getParameter("rn"));
			q=Integer.parseInt(request.getParameter("rc"));
		
		
			if(q==1){
				v=p*10;
			}
			else{
				v=p*100;
			}
			
		
			
			%>
			
			
		<br>
		
			No of rooms<input type="text" name="rn" value="<%=p%>"><br><br>
			room cost<input type="text" name="rc" value="<%=q%>"><br><br>
			anz<input type="text" value="<%=v%>"><br><br>
			
		
	
		
	
	</body>  

</html>