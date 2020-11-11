<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!int total=0;//누적
	
	
	

%>
<%

Random ran = new Random();
int num2=(ran.nextInt(10))+1;//0~9
total++; 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
		<%=total %>번쨰 방문자 입니다.<br>
		<%if(total%10==0){%>
			당첨되셨습니다.
		<% }%>
	</p>
	
		<hr/>
		<h2>랜덤 구구단 <%=num2 %>단</h2>
	<p>
		
		이번에 나온 구구단은 <%=num2 %>단 입니다.<br>
		<%for(int i=1;i<10;i++){ %>
			<%=num2 %>x<%=i %>= <%=num2*i %>
			<br>
		<%  } %>
	</p>
</body>
</html>