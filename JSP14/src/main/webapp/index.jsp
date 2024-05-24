<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>간이 로그인 처리</title>
		<style>
			#wrap{
				width: 300px;
				margin : 0 auto;
				border : 1px solid black;
				padding : 20px;
			}
			span{
				width:80px;
				display : inline-block;
			}
			input[type="submit"]{
				width: 199px;
				margin : 0 auto;
				display : block;
			}
		</style>
	</head>
	<body>
		<div id="wrap">
			<form method="get" action="check.jsp">
				<span>아이디 : </span><input type="text" name="user"><br>
				<span>비밀번호 : </span><input type="password" name = "pw"><br>
				<input type="submit" value="로그인!">
			</form>
		
		</div>
	</body>
</html>