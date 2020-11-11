<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	/*
	1.Date클래스를 이용해서 xxxx년 xx월xx일 형태로 날짜를 생성
	쿠키이름은 show쿠키로 생성해주세요
	*/
	Date date=new Date();
	SimpleDateFormat fmt=new SimpleDateFormat("yyyy년MM월dd일");
	String date1 = fmt.format(date);
	
	Cookie coo=new Cookie("show",date1);
	
	coo.setMaxAge(30);
	response.addCookie(coo);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="cookie02.jsp">쿠키 사용하기</a>
</body>
</html>