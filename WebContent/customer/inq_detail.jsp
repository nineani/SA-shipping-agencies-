<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="inquiries.inquiries" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="./dbconn.jsp" %>
<link rel="icon" type="image/x-icon" href="../img/favicon.ico">
<link rel="shortcut icon" type="image/x-icon" href="../img/favicon.ico">
<meta charset="UTF-8">
<title>Shipping Agencies</title>
</head>
<body>

<%@ include file="../common_set/header.jsp" %>
	<section class="visual">
	</section>
	
	<section class="section">
		<div class="inner join_section">
			<nav class="inner_nav">
				<ul>
					<li class="inner_nav_header">고객센터</li>
					<li><a href="../customer/" class="inner_nav_link">공지사항</a></li>
	                <li><a href="../customer/faq.jsp" class="inner_nav_link">FAQ (자주 묻는 질문)</a></li>
	                <li class="active"><a href="./inquiries.jsp" class="inner_nav_link">1:1문의</a></li>
				</ul>
            </nav>

            <article class="section_info">
            	<h2 class="sinfo_tit">1:1문의</h2>
<!--             	<table class=""> -->
		            <%
	            		PreparedStatement pstmt = null;
	            		ResultSet rs = null;
	            	
		            	String qnum = request.getParameter("q_num");
		            	String sql = "select * from inq_user where q_num = ?";

		            	pstmt = conn.prepareStatement(sql);
		            	pstmt.setString(1, qnum);
		            	rs = pstmt.executeQuery();
		            	
		            	if (rs.next()) {
		            		inquiries i1 = new inquiries();
		            		
		            		i1.setQnum(rs.getInt("q_num"));
		            		i1.setQcategory(rs.getString("q_category"));
		            		i1.setQcenter(rs.getString("q_center"));
		            		i1.setQtitle(rs.getString("q_title"));
		            		i1.setQcontent(rs.getString("q_content"));
		            		i1.setQfile(rs.getString("q_file"));
		            		i1.setQdate(rs.getDate("q_date"));
		            		i1.setId(rs.getString("id"));
		            		
		            %>
<table class="shp_table salert_txt table_set">
	<tr>
		<td class="s_tit">질문유형</td>
		<td><%=i1.getQcategory()%></td>
	</tr>
	<tr>
		<td class="s_tit">번호</td>
		<td><%=i1.getQnum() %></td>
	</tr>
	<tr>
		<td class="s_tit">배송대행지</td>
		<td><%=i1.getQcenter() %></td>
	</tr>
	<tr>
		<td class="s_tit">제목</td>
		<td><%=i1.getQtitle() %></td>
	</tr>
	<tr>
		<td class="s_tit">작성일</td>
		<td><%=i1.getQdate() %></td>
	</tr>
	<tr>
		<td class="s_tit">내용</td>
		<td><%=i1.getQcontent() %></td>
	</tr>
	<tr>
		<td class="s_tit">파일</td>
		<td><%=i1.getQfile() %></td>
	</tr>
</table>
 		<%
		}
		%>
		</div>
            </article>
		</div>
		
	</section>

	
<%@ include file="../common_set/footer.jsp" %>
</body>
</html>