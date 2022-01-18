<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	String mgr_id = "admin";
	String mgr_pw = "1234";
	
	if(mgr_id.equals(id)){
		if(mgr_pw.equals(password)){
			response.sendRedirect("index.jsp");
		}
		else{
			//비밀번호 오류.
					response.sendRedirect("manager_login.jsp");
		}
	}
	else{
		//아이디 없음.
			response.sendRedirect("manager_login.jsp");
	}
%>
</body>
</html>