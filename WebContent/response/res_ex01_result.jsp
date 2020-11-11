<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("utf-8");//한글
	
 	String name=request.getParameter("name");
 	String age = request.getParameter("age");
 	
 	//age에 다른 결과페이지를 보여주고 싶다면?
 	int a = Integer.parseInt(age);
 	
 	if(a>=20){
 		response.sendRedirect("res_ex01_ok.jsp");//URL주소
 	}else{
 		response.sendRedirect("res_ex02_no.jsp");
 	}
 	
 	
 %>
