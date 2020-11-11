<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%	
	request.setCharacterEncoding("utf-8");//한글처리
	
	String name=request.getParameter("name");
	String KR= request.getParameter("KR");
	String ENG = request.getParameter("ENG");
	String MATH = request.getParameter("MATH");
	
	int kr = Integer.parseInt(KR);
	int eng = Integer.parseInt(ENG);
	int math = Integer.parseInt(MATH);
	int sum = kr+eng+math;
	double avg = sum/3.0;
	
	String result = String.format("%.2f",avg);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>결과</h2>
	이름:<%=name %><br>
	평균값:<%=result %><br>
	합계:<%=sum %><br>
	
	<%if(avg>80){%>
		고득점
	<%}else if(avg>60){%>
		중간
	<%}else{%>
		저득점
	<%}%>
	
</body>
</html>