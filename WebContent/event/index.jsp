<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Event" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shipping Agencies</title>
</head>
<body>

<!--  헤더 불러옴 -->
<%@ include file="../common_set/header.jsp" %>
<!--  DB 연결 -->
<%@ include file="dbconn.jsp" %>
	<!--  비주얼용 섹션 -->
    <section class="visual"></section>
    
    <!--  본문 섹션 -->
    <section class="section">
        <div class="inner join_section">

            <nav class="inner_nav">
                <ul>
                    <li class="inner_nav_header">이벤트</li>
                    <li class="active"><a href="../event/" class="inner_nav_link">진행 중인 이벤트</a></li>
                </ul>
            </nav> <!-- 부메뉴 닫음 -->

            <article class="section_info">
                <h2 class="sinfo_tit">진행 중인 이벤트</h2>
                <ul class="event_table">
<%

PreparedStatement ps = null;
ResultSet rs = null;
String sql = null;

sql = "SELECT * FROM EVENT ORDER BY E_NUM DESC";
ps = conn.prepareStatement(sql);
rs = ps.executeQuery();

while(rs.next()){
	Event event = new Event();
	event.setE_num(rs.getInt("e_num"));
	event.setE_title(rs.getString("e_title"));
	event.setE_con(rs.getString("e_con"));
	event.setE_day1(rs.getDate("e_day1"));
	event.setE_day2(rs.getDate("e_day2"));
	event.setE_pic(rs.getString("e_pic"));	
%>
                    <li class="event_li">
                        <div class="event_img">
                        	<img src="../img/<%=event.getE_pic() %>" />
                        </div>
                        <div class="event_con">
                            <h3 class="event_tit"><%= event.getE_title() %></h3>
                            <p class="event_context"><%= event.getE_con() %></p>
                            <p class="event_date"><%= event.getE_day1() %> ~ <%= event.getE_day2() %></p>
                        </div>
                    </li>
<%
}
if(rs != null)
	rs.close();
if(ps != null)
	ps.close();
if(conn != null)
	conn.close();
%>
                </ul>
                <!-- 이벤트 테이블 닫음 -->
            </article>
        </div>
    </section>
    <!-- 섹션 닫음 -->
<!--  푸터 불러옴 -->
<%@ include file="../common_set/footer.jsp" %>
</body>
</html>