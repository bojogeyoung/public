<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Expression Language</title>
	</head>
	<body>
		<!-- EL(Expression Language): 표현언어, 변수의 값을 외부로 표현해주는 역할 -->
		<%-- ${내용} : 내용은 변수의 이름 또는 값, 계산식을 포함한 외부로 적어주기 위한 데이터 --%>
		<%--자바가 먼저 실행되고 EL이 실행되고 html이 실행됨 --%>
		<% out.print("테스트"); %><br>
		<%="테스트" %><br>
		${"테스트" }<br>
		
		<!-- EL의 종류 -->
		정수형 : ${10 }<br>
		실수형 : ${4.5 }<br>
		문자열형: ${"iot 융합"}<br>
		논리형 : ${true }<br>
		null처리 : ${null }<br> <!--EL에서 null은 표현할게 없으니까 출력안함 -->
		
		<hr>
		<!-- EL의 산술연산 -->
		1+2 = ${1+2 }<br>
		3-4 = ${3-4 }<br>
		5*6 = ${5*6 }<br>
		7/9 = ${7/9 }<br>
		9%10 = ${9%10 }<br>
		11 div 12 = ${11 div 12 }<br>
		
		<!-- 여기서 부터 복붙하시면 됩니다 -->
		<hr>
		
		<!-- 관계연산 -->
		1 == 2 : ${1==2 }<br>
		1 eq 2 : ${1 eq 2 }<br>
		3 != 4 : ${3 != 4 }<br>
		4 ne 4 : ${3 ne 4 }<br> <!-- ne = negative equal의 약자 -->
		5 < 6  : ${5 < 6 }<br>
		5 lt 6 : ${5 lt 6 }<br> <!-- lt : little than  "<" -->
		7 gt 8 : ${7 gt 8 }<br> <!-- gt : greater than ">" -->
		9 <= 10 :${9<=10}<br>
		9 le 10 :${9 le 10 }<br> <!--le : little equal "<=" -->
		11 ge 10:${11 ge 10 }<br> <!-- ge : greater equal ">=" -->
	
		<hr>
		true && false : ${true && false}<br>
		true || false : ${true || false}<br>
		!true : ${!true}<br>
		
		<hr>
		<!-- null 확인연산 -->
		empty null : ${empty null}<br>
		
		<%
			int a=3+5;
			pageContext.setAttribute("num", "a");
		
		%>
		${a}
		
		
		
		
		 
	
	</body>
</html>