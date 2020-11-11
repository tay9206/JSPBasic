<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- 카카오친구들: 어피치 ,라이언 ,제이지 ,무지 ,프로도 ,튜브 -->
<%! //선언자
	Random ran=new Random();
	String[]kakao ={"어피치","라이언","제이지","무지","프로도","튜브"};
	ArrayList<String>list=new ArrayList<>();
	int name=-1;
	
%>
 <%
 	
 	//스크립트릿
 	if(list.size()==10)list.clear();
 	
 	int num=ran.nextInt(kakao.length); 
 	String name=kakao[num];
 	list.add(kakao[num]);
 	
 	int count=0;
 	for(String n:list){
 		if(n.equals(name)){//랜덤으로 선택된 값, 리스트의 요소가 동일하면
 			count++;
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

	<p>
	
		<b><%=name %></b>님이 입장<br>
		현재 같은 카카오 프렌즈는 <%=count %>명입니다.
	</p>
	
	<h2>현재 구성 정보</h2>
	<p>
		<%=list.toString() %> (<%=list.size() %>명)
	</p>
</body>
</html>