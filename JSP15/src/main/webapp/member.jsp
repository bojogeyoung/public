<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>회원 조회 페이지</title>
		<style>
			#wrap{
				width: 800px;
				border : 10px solid gray;
				margin : 0 auto;
				padding : 30px;
			}
			table{
				margin : 0 auto;
			}
			th, td{
				border : 1px solid black;
				padding : 10px;
				
			}
		</style>
	</head>
	<body>
		<%
			Connection conn = null; //통로
			Statement stmt = null;	//데이터를 보내줄 객체
			ResultSet rs = null;    //데이터를 받아올 객체
			
			String url="jdbc:mysql://127.0.0.1:3306/sample";
			String db_id = "root";
			String db_pw = "iotiot";
			
			
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url,db_id,db_pw);
				String sql = "select * from register;";
				stmt = conn.createStatement();
				System.out.println(sql);
				rs = stmt.executeQuery(sql);
				%>
				<div id="wrap">
					<table>
						<tr>
							<th>회원번호</th>
							<th>아이디</th>
							<th>비밀번호</th>
							<th>이름</th>
							<th>이메일</th>
							<th>전화번호</th>
							<th>주소</th>
						</tr>
						<%
						while(rs.next()){
							String num = rs.getString("num");
							String id = rs.getString("id");
							String pass = rs.getString("pass");
							String name = rs.getString("name");
							String email = rs.getString("email");
							String phone = rs.getString("phone");
							String address = rs.getString("address");
							%>
							<tr>
								<td><%=num %></td>
								<td><%=id %></td>
								<td><%=pass %></td>
								<td><%=name %></td>
								<td><%=email %></td>
								<td><%=phone %></td>
								<td><%=address %></td>
								
							</tr>
							
							
							
							<%
							
							
						}//while
						
						
						%>
						
					</table>
				
				</div>
				
				
				<%
				
				
			}catch(Exception e){
				System.out.println("접속중 오류 발생 : "+e);
			}finally{
				try{
					if(rs!=null)rs.close();
					if(stmt!=null)stmt.close();
					if(conn!=null)conn.close();
					
				}catch(Exception ex){
					System.out.println("접속 해제중 오류발생:"+ex);
				}
			}//finally
			
			
			
		%>
	</body>
</html>