<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	show쿠키가 있다면 쿠키가 가지고 있는 날짜를 화면에 출력, 만약에 쿠키가 없으면"쿠키가 없네요~"출력
	*/
	Cookie[]cookies=request.getCookies();
	
	String name=null;//쿠키값을 저장할 변수
	if(cookies != null){//쿠키가 없는 경우가 존재하기 떄문에
		for(Cookie c:cookies){
			if(c.getName().equals("show")){
				name=c.getValue();
			}
		}

	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%if(name==null){ %>
	쿠키가 없네요!
	<%}else{ %>
	<%=name %>
	<%} %>
</body>
</html>