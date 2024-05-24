<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>회원 가입 페이지</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");  		//한글 깨짐 방지
			String id = request.getParameter("id");			//input name="id"를 받아옴
			String pass = request.getParameter("pw");		//input name="pw"를 받아옴
			String name = request.getParameter("nm");		//input name="nm"을 받아옴
			String email = request.getParameter("em");
			String phone = request.getParameter("ph");
			String address = request.getParameter("ad");  // 커넥션보다 먼저 데이터 받아오기
		
			Connection conn=null;
			Statement stmt = null;
			
			
			String url ="jdbc:mysql://127.0.0.1:3306/sample";
			String db_id="root";
			String db_pw = "iotiot";
			
			
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url,db_id,db_pw);
				String sql = "insert into register(id,pass,name,email,phone,address)";
				sql+= "values('"+id+"','"+pass+"','"+name+"','"+email+"','"+phone+"','"+address+"');";
				System.out.println(sql);
				stmt = conn.createStatement();
				out.print("<h1>"+sql+"</h1>");
				stmt.execute(sql);
				//stmt.execute() : return boolean ; insert문에 많이 사용
				//stmt.executequery() : return ResultSet  / select문에 사용
				//stmt.executeUpdate(); return int;  update문과 delete문에 사용
				//"insert into register(id,pass.name,email,phone, address) values ("'+id+"','"+pass+"','"+name+"','"+email+"','"+phone+"','"+address+"');";
				response.sendRedirect("member.jsp");
			}catch(Exception e){
				System.out.println("접속중 오류발생 "+e);
			}finally{
				try{
					
					if(stmt!=null)stmt.close();
					if(conn!=null)conn.close();
					
					
				}catch(Exception ex){
					System.out.println("연결해제중 오류발생"+ex);
				}
			}//finally
			
		%>
	</body>
</html>