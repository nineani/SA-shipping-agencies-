<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="item.itemlist" %>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
			int num = Integer.parseInt(request.getParameter("p_num"));
	
			itemlist aitemlist = new itemlist();
			
			int result = aitemlist.delete(num);
			
			if (result == -1) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('삭제 실패.')");
					script.println("history.back()");
					script.println("</script>");
			}
			else {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href = 'shipping_list_delete.jsp'");
				script.println("</script>");
			}
	%>
</body>
</html>