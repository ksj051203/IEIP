<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <section>
      <% /* 자바 DB 연동 샘플 소스코드 */
try{
Class.forName("oracle.jdbc.OracleDriver");
Connection con = DriverManager.getConnection

("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");

Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery("select * from test");
while(rs.next()){
   %>
   <h1><%out.println(rs.getString(1)); %></h1>
<%
}
stmt.close();
con.close();
}catch(Exception e){
e.printStackTrace();
}
%>
   </section>
</body>
</html>