<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>로그인 처리페이지</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			String inputID = request.getParameter("user");
			String inputPW = request.getParameter("pw");
			//정식 로그인이라면 데이터베이스에서 가져와야할 값
			String adminID= "admin"; //관리자의 id
			String adminPW = "1111"; //관리자의 비밀번호
			String userID ="test" ;  //일반회원의 id
			String userPW = "1234";	 //일반회원의 비밀번호
			
			if(inputID.equals(adminID) && inputPW.equals(adminPW)){
				//관리자가 로그인한 상태
				out.print("<h1>관리자님 접속을 환영합니다</h1>");
				session.setAttribute("grade","관리자");
				response.sendRedirect("main.jsp");
			}else if(inputID.equals(userID) && inputPW.equals(userPW)){
				out.print("<h1>회원님 접속을 환영합니다</h1>");
				session.setAttribute("grade","일반회원");
				response.sendRedirect("main.jsp"); // Java를 이용한 페이지 강제이동
			}else{
				//로그인 실패
				%>
					<script>
						alert("로그인에 실패하셨습니다");
						location.href="index.jsp"; // JavaScript를 이용한 페이지 강제이동
					</script>
				
				
				<%
			}
			
		%>
		<h1>아이디 : <%=inputID %></h1>
		<h1>비밀번호 : <%=inputPW %></h1>
	</body>
</html>