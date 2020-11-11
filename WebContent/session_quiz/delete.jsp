<%@page import="com.session.UserRepository_1"%>
<%@page import="com.session.User_1"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    	if(session.getAttribute("login")==null){
        		response.sendRedirect("login01");
        	}

			
        	User_1 user=(User_1)session.getAttribute("login");
        	UserRepository_1.DelUser(user.getId());//삭제
        	
        	session.invalidate();
        	response.sendRedirect("login01.jsp");
    %>
