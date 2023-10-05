<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Data</title>
</head>
<body>

<%
    String name = request.getParameter("name");
    String age = request.getParameter("number");
    int result =0;
    
    if(name != null && age != null) {
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "password");

            String sql = "INSERT into testdb (name,age) VALUES (?, ?)";
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setInt(2, Integer.parseInt(age));
            result = ps.executeUpdate();

           
        } catch (Exception e) {
            out.print(e.getMessage());
        } finally {
            try {
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                out.print(e.getMessage());
            }
        }
    }
%>

<% if(result>0){%>
<p>Success</p>
<%}else{ %>
<p>false</p>
<%} %>

</body>
</html>
