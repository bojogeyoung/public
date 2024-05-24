<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>리퀘스트를 통한 데이터 확보</title>
	</head>
	<body>
		<h1>여기는 view1.jsp입니다.</h1>
		<h1>여기서 request속의 정보를 session으로 옮깁니다.</h1>
		<%
			request.setCharacterEncoding("utf-8");
			String str = request.getParameter("data");
			session.setAttribute("key",str);
			
		%>
		<h2>받아온 데이터는 <%=str %> </h2>
		<a href="view2.jsp">눌러서 세션 내부 정보 확인!</a>
	</body>
</html>