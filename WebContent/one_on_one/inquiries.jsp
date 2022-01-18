<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            	<table class="info_table">
            		<thead>
            			<tr>
            				<th class="qnum">번호</th>
            				<th class="qtitle">제목</th>
            				<th class="qdate">등록일</th>
            			</tr>
            		</thead>
            		<tbody>
            			<%
            				String q_num = request.getParameter("q_num");
            				PreparedStatement pstmt = null;
            				ResultSet rs = null;
            				
            				String sql = "select q_num, q_title, q_date from inq_user order by q_num desc";
            				pstmt = conn.prepareStatement(sql);
            				rs = pstmt.executeQuery();
            				
            				while (rs.next()) {
            			%>
            			<tr onClick="location.href='./inq_detail.jsp?q_num=<%=rs.getString("q_num")%>'">
            			<!-- cursor:pointer css에 넣어주기 -->
            				<td class=""><%=rs.getString("q_num") %></td>
            				<td class=""><%=rs.getString("q_title") %></td>
            				<td class=""><%=rs.getString("q_date") %></td>
            			</tr>
            			<%
            				}
            				if(rs != null)
            					rs.close();
            				if(pstmt != null)
            					pstmt.close();
            				if(conn != null)
            					conn.close();
            			%>
            		</tbody>
            	</table>
            	<!-- 버튼 이벤트 설정 필요(로그인 시 바로 넘어가고 비로그인 시 로그인 창으로 넘어가게끔 -->
            	<div class="btn_wri">
            		<input type="button" class="inq_write" value="작성" onclick="location='inq_form.jsp'">
            	</div>
            </article>
		</div>
	</section>
<%@ include file="../common_set/footer.jsp" %>
</body>
</html>