<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>리퀘스트 데이터 확인</title>
	</head>
	<body>
		<h1>여기는 req.jsp입니다. 리퀘스트로 전송된 데이터를 확인합니다.</h1>
		<%
			request.setCharacterEncoding("utf-8"); // post처리에서 한글 깨지는 현상 해결
			String data1 =request.getParameter("first");
			String data2 =request.getParameter("c");
			//session.setAttribute("검색어",데이터); 데이터 저장
			//session.getAttribute("검색어");  데이터 꺼내기
			//session은 object 타입으로 데이터를 저장하므로 꺼낼 때 캐스팅하여 사용하여야 한다.
			session.setAttribute("first",data1); //first라는 변수의 object로 저장됨
			session.setAttribute("c",data2);
		%>
		<h1 style='color:<%=data2 %>;'><%=data1 %></h1>
		<a href="next.jsp">다른 페이지에서 데이터확인</a>
		
		
	</body>
</html>