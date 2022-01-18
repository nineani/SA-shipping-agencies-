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
<%@ include file="../common_set/header.jsp" %>
	<%
	
		
		
		request.setCharacterEncoding("UTF-8"); //한글인코딩
		
		
		//myaccount_modify.jsp의 폼데이터 받기
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String ename = request.getParameter("ename");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String tphone = request.getParameter("phone");
		String sms_check = request.getParameter("sms_check");
		String email_check = request.getParameter("email_check");
		String gender = request.getParameter("gender");
		String tbirth = request.getParameter("birth");
		
		Integer phone = Integer.parseInt(tphone);
		Integer birth = Integer.parseInt(tbirth);
		
		
		PreparedStatement pstmt = null;
		
		//받아온 데이터로 DB수정
		String sql = "update PERSONAL_INFORMATION set password = ?,email = ?,address = ?,phone = ?,sms_check = ?, email_check = ?,gender = ?,birth = ? where id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, password);
		pstmt.setString(2, email);
		pstmt.setString(3, address);
		pstmt.setInt(4, phone);
		pstmt.setString(5, sms_check);
		pstmt.setString(6, email_check);
		pstmt.setString(7, gender);
		pstmt.setInt(8, birth);
		pstmt.setString(9, id);
		pstmt.executeUpdate();
		
		
		//DB와의 연결종료
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
		
		//모든 프로그램 수행 후 페이지 이동
		response.sendRedirect("myaccount.jsp");
	
	%>
</body>
</html>