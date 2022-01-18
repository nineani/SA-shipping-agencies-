<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id = "user" class="user.User" scope="page"/>
<jsp:setProperty name = "user" property="id"/>
<jsp:setProperty name = "user" property="password"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
	String id = null;
		if (session.getAttribute("id") != null) {
			id = (String) session.getAttribute("id");
		}
		if (id != null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 로그인이 되어있습니다.')");
			script.println("location.href = '../home/index.jsp'");//이전페이지(로그인페이지)로 돌려보냄
			script.println("</script>");
		}
			UserDAO userDAO = new UserDAO();//login.jsp에서 입력받은값을 확인
			int result = userDAO.login(user.getId(), user.getPassword());
			if (result ==1) {
		session.setAttribute("id", user.getId());
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = '../home/index.jsp'");//성공시 index페이지로 넘김
		script.println("</script>");
		
			}
			else if (result == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호가 틀립니다.')");
		script.println("history.back()");//이전페이지(로그인페이지)로 돌려보냄
		script.println("</script>");
		
			}
			else if (result == -1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('존재하지않는 아이디입니다.')");
		script.println("history.back()");//이전페이지(로그인페이지)로 돌려보냄
		script.println("</script>");
		
			}
			else if (result == -2) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('데이터베이스 오류가 발생했습니다.')");
		script.println("history.back()");//이전페이지(로그인페이지)로 돌려보냄
		script.println("</script>");
		
			}
	%>
</body>
</html>