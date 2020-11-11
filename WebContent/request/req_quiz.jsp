<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 
	1.form을 이용해서 post형식으로 이름,국,영,수 값을 입력받습니다.(태그에서는 반드시 값을 입력하도록)
	2.req_quiz_result.jsp로 전송
	3.해당 페이지에서는 평균, 합계를 구하고, 80점이상=고득점, 60이상=중간, 60아래=저득점출력
	 
	 require- 필수
	 patter - 값의 정규표현식
	 -->
	<form action="req_quiz_result.jsp" method="post">
		
		이름:<input type="text" name="name" required><br>
		국어:<input type="text" name="KR" pattern="[0-9]{2,3}" required><br>	<!-- required는 필수입력 -->
		영어:<input type="text" name="ENG" required><br>
		수학:<input type="text" name="MATH" required><br>
		
		<input type="submit" value="전송">
	
	
	</form>
	
	
	

</body>
</html>