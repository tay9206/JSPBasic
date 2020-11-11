<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 	/*
 	1.아이디,비밀번호를 받습니다.
 	2. id=abc, pw=1234라면 로그인성공이라고 간주(user_id,id)를
 	저장하는 쿠키를 생성하고 cookie_welcome페이지로 리다이렉트
 	3.아이디와 비밀번호가 다르다면, 다시 로그인 페이지로 리다이렉트
 	4.welcome페이지에서는 쿠키값을 꺼내서 "id님 환영합니다."
 	*/
 	request.setCharacterEncoding("utf-8");
 	String id=request.getParameter("id");
 	String pw=request.getParameter("pw");
 	String idCheck = request.getParameter("idcheck");//아이디 기억하기 checkbox
 	
 	if(id.equals("abc") && pw.equals("1234")){ //로그인 성공
		Cookie cookie=new Cookie("user_id",id);
	 	cookie.setMaxAge(1800);//30분
 		response.addCookie(cookie);
	 	
	 	//idCheck값이 y라면 기억하기에 대한 쿠키 생성
	 	if(idCheck != null){
		 	Cookie cookie2=new Cookie("id_check",id);
		 	cookie.setMaxAge(60*60*24);//하루
		 	response.addCookie(cookie2);
	 	}
		response.sendRedirect("cookie_login_welcome.jsp");
	 	
 	}else{
 		response.sendRedirect("cookie_login.jsp");
 	}
 	
 	
 	
 	
 	
 	
 %>
