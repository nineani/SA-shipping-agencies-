<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.User" %>
<%@ page import="member.memberlist" %>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	
	
		if (request.getParameter("id") == null || request.getParameter("id").equals("") ||
			request.getParameter("name") == null || request.getParameter("name").equals("") ||
			request.getParameter("ename") == null || request.getParameter("ename").equals("") ||
			request.getParameter("password") == null || request.getParameter("password").equals("") ||
			request.getParameter("email") == null || request.getParameter("email").equals("") ||
			request.getParameter("address") == null || request.getParameter("address").equals("") ||
			request.getParameter("phone") == null || request.getParameter("phone").equals("") ||
			request.getParameter("birth") == null || request.getParameter("birth").equals("") ){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안 된 사항이 있습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}else {
			int phone = Integer.parseInt(request.getParameter("phone"));
			int birth = Integer.parseInt(request.getParameter("birth"));
			int num = Integer.parseInt(request.getParameter("num"));
			
			memberlist amemberlist = new memberlist();
			int result = amemberlist.update(request.getParameter("id"), request.getParameter("name"), request.getParameter("ename"), request.getParameter("password"),
					request.getParameter("email"), request.getParameter("address"), phone, birth, num);
			if (result == -1) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('글 수정 실패.')");
				script.println("history.back()");
				script.println("</script>");
			}
			else {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href = 'index.jsp'");
				script.println("</script>");
			}
		}
	%>
</body>
</html>