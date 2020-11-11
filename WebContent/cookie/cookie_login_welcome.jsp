<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[]cookies=request.getCookies();
	
	String name=null;//쿠키값을 저장할 변수
	if(cookies != null){//쿠키가 없는 경우가 존재하기 떄문에
		for(Cookie c:cookies){
			if(c.getName().equals("user_id")){
				name=c.getValue();
			}
		}
	
	}
	if(name==null){
		response.sendRedirect("cookie_login.jsp");
	}
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=name %>님 환영합니다.
</body>
</html>