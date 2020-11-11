<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1.좌석정보를 받습니다.
	
	request.setCharacterEncoding("utf-8");
	String[]seat=request.getParameterValues("seat");	
	
	
	
	
	//2.좌석정보를 저장할 List생성
	List<String>reserve=new ArrayList<>();
	
	
	//3.application에서 좌석정보가 존재하면 2번 리스트에 저장.
	
	if(application.getAttribute("reserve") != null){
		 reserve = (List<String>)application.getAttribute("reserve");
		
	}
	
	
	
	
	
	
	//4.좌석정보를 비교해서 중복이 없을떄 하나씩 저장해놓을 사본리스트 생성
	//4.좌석정보와 2번의 리스트를 비교해서, 중복된 좌석이 아니라면, 사본 리스트에 좌석정보를 추가합니다.
	
	
	ArrayList<String>reserve2=new ArrayList<>();
	for(int i=0;i<seat.length;i++){
		if(reserve.contains(seat[i])){
			break;
		}else{
			reserve2.add(seat[i]);
		}
	}
		
	
	
	
	
	
	//5.사본리스트와 좌석정보가 길이가 같다면 중복이 없으므로, 2번의 리스트에 통쨰로 사본리스트를 추가

	if(reserve2.size()==seat.length){
		reserve.addAll(reserve2); //예약좌석이 들어있는 reserve2를 원본리스트에 추가
		
	}else {
		
		
	}
	
	
	
	//6.application에 같은 이름으로 저장.
	
	application.setAttribute("reserve", reserve);
	
	//7.화면에 예약 성공실패의 결과를 출력해주세요.
	System.out.println(application.getAttribute("reserve"));
	
%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h2>예약결과</h2>
		예약한 좌석:
		<%for(String s:seat){ %>
			[<%=s %>]
		<%} %>
		
		<b><%=reserve2.size()==seat.length?"예약성공":"예약실패 ( 예약된 좌석입니다.)" %></b>
		
		<button type="button" onclick="location.href='reverse.jsp'">다시 예약하기</button>
		
	</div>
		
</body>
</html>