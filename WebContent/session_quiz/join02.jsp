<%@page import="com.session.UserRepository_1"%>
<%@page import="com.session.User_1"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1.사용자 값을 받은 다음에 user객체를 생성하고 사용자의 입력값을 저장한 후에
	userRepository클래스에 저장해 주세요.
	
	2.join03페이지로 이동합니다.
	
	*/
	request.setCharacterEncoding("utf-8");
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	String name=request.getParameter("name");
	String birth=request.getParameter("birth");
	
	User_1 user = new User_1();
	
	user.setId(id);
	user.setPw(pw);
	user.setName(name);
	user.setBirth(birth);
	
	UserRepository_1 ur=new UserRepository_1();
	ur.method01(user);
	
	response.sendRedirect("join03.jsp");
%>