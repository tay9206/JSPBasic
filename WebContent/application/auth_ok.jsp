<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	//올바른 인증값을 적은 경우는 reverse.jsp로 이동
 	//올바른 인증값을 적은 경우 authYN이름으로 인증세션을 생성.
 	//올바르지 않은 경우는 다시 인증페이로이동
 	request.setCharacterEncoding("utf-8");
 	String auth=(String)session.getAttribute("auth");
 	String code = request.getParameter("code");
 	
 	if(auth.equals(code)){
 		//인증의 성공 세션
 		session.setAttribute("authYN","y" );
 		response.sendRedirect("reverse.jsp");
 	}else{
 		response.sendRedirect("auth.jsp");
 	}
 	
 	
 	
 	
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>