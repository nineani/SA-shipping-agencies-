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
<jsp:setProperty name = "user" property="name"/>
<jsp:setProperty name = "user" property="ename"/>
<jsp:setProperty name = "user" property="email"/>
<jsp:setProperty name = "user" property="address"/>
<jsp:setProperty name = "user" property="phone"/>
<jsp:setProperty name = "user" property="sms_check"/>
<jsp:setProperty name = "user" property="email_check"/>
<jsp:setProperty name = "user" property="gender"/>
<jsp:setProperty name = "user" property="birth"/>
<!-- 보내는 5가지 데이터 다 받기 -->


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
			
			if (user.getId() == null 
					|| user.getPassword() == null 
					|| user.getName() == null 
					|| user.getEname() == null 
					|| user.getEmail() == null  
					|| user.getAddress() == null  
					|| user.getPhone() == null 
					|| user.getSms_check() == null 
					|| user.getEmail_check() == null 
					|| user.getGender() == null 
					|| user.getBirth() == null  ){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.')");
		script.println("history.back()");//이전페이지(로그인페이지)로 돌려보냄
		script.println("</script>");
			} else {
		
		UserDAO userDAO = new UserDAO();//join.jsp에서 입력받은값을 확인 //데이터베이스에 접근할 수 있는 베이스
		int result = userDAO.join(user); //입력받은 값을 실제로 수행하도록
		if (result == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('데이터오류가 있습니다.')");
			script.println("history.back()");//이전페이지(로그인페이지)로 돌려보냄
			script.println("</script>");
			
			
		}
		else  { //문제가 없을 경우
			session.setAttribute("id", user.getId());
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = 'sign_complete.jsp'");
			script.println("</script>");
			
		}
		
			}
	%>
</body>
</html>