<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- a태그를 이용해서 req_video페이지로 상대경로, 절대경로 이동 -->
	
	<a href="../../request/req_vidio.jsp">req_video페이지로 이동 (상대)</a>	
	<a href="/JSPBasic/request/req_vidio.jsp">req_video페이지로 이동 (절대)</a>
	
	<br>
	<!-- img태그를 사용해서 java.png참조 -->
	
	<img alt="상대경로" src="../../request/img/java.png" height="100px" ><br>
	<img alt="절대경로" src="/JSPBasic/request/img/java.png" width="100px">
	
	<br>
	<!-- a태그를 이용해서 TestServlet으로 상대경로,절대경로 -->	
	<a href="../../banana">TestServlet페이지로 이동(상대)</a>
	<a href="/JSPBasic/banana">TestServlet페이지로 이동(절대)</a>
	
	<%out.println("출력~"); %>
</body>
</html>