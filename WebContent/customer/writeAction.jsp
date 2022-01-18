<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bbs.BbsDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id = "bbs" class="bbs.Bbs" scope="page"/>
<jsp:setProperty name = "bbs" property="subject"/>
<jsp:setProperty name = "bbs" property="content"/>

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
		if (id == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요')");
			script.println("location.href = '../login/login.jsp'");//이전페이지(로그인페이지)로 돌려보냄
			script.println("</script>");
		} else {
			if (bbs.getSubject() == null || bbs.getContent() == null){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안 된 사항이 있습니다.')");
				script.println("history.back()");//이전페이지(로그인페이지)로 돌려보냄
				script.println("</script>");
			} else {
				BbsDAO bbsDAO = new BbsDAO();////데이터베이스에 접근할 수 있는 베이스
				int result = bbsDAO.write(id, bbs.getSubject(),  bbs.getContent()); //입력받은 값을 실제로 수행하도록
				if (result == -1) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글쓰기에 실패했습니다')");
					script.println("history.back()");//이전페이지로 돌려보냄
					script.println("</script>");
					
					
				}
				else  { //문제가 없을 경우
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("location.href = 'index.jsp'");
					script.println("</script>");
					
				}
				
			}
		}
		
	
	%>
</body>
</html>