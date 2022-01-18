<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String p_num = request.getParameter("p_num");
	String sql;
	PreparedStatement pstmt;
	
	sql = "update APPLICATION_FORM set cancle = 1 where p_num = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, p_num);
	 pstmt.executeQuery();
	
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
	
	response.sendRedirect("index.jsp");
%>
</body>
</html>