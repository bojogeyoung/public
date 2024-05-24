<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>scope범위처리</title>
	</head>
	<body>
		<h1>여기는 next.jsp입니다. 별도로 전송되지 않은 값을 받을 수 없습니다.</h1>
		<%
			
			String data2 = (String)session.getAttribute("c");
			String data1 = (String)session.getAttribute("first");
		%>
		<h1>받아온 데이터 확인</h1>
		<h2><%=data1 %></h2>
		<h2><%=data2 %></h2>
	</body>
</html>