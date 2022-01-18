<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shipping Agencies</title>
</head>
<body>

<!--  헤더 불러옴 -->
<%@ include file="../common_set/header.jsp" %>

    <!-- 섹션 영역 -->
    <section class="visual">

    </section>
    <section class="section">
        <div class="inner join_section">

            <!-- 부메뉴 -->
            <nav class="inner_nav">
                <ul>
                    <li class="inner_nav_header">마이페이지</li>
                    <li class="active"><a href="../mypage/" class="inner_nav_link">배송대행 신청내역</a></li>
                    <li><a href="../mypage/center_info.jsp" class="inner_nav_link">배송대행 센터 안내</a></li>
                    <li><a href="../mypage/myaccount.jsp" class="inner_nav_link">내 회원정보</a></li>
                </ul>
            </nav> <!-- 부메뉴 닫음 -->

            <!-- 콘텐츠 영역 -->
            <article class="section_info">
                <h2 class="sinfo_tit">배송대행 신청내역</h2>
                <table class="shp_table table_set">
                <%@ include file="dbconn.jsp" %>
				<%
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					
					String p_id = id;
					String sql = "select * from APPLICATION_FORM where p_id = ?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, p_id);
					rs = pstmt.executeQuery();
					
					while (rs.next()) {
				%>
                    <tr>
                        <td class="s_tit">주문 국가명</td>
                        <td class="s_tit">일련번호</td>
                        <td class="s_tit">주문 상품명</td>
                        <td class="s_tit">상품 단가</td>
                        <td class="s_tit">주문일</td>
                        <td class="s_tit">  </td>
                    </tr>
                    <tr>
                        <td>
                            <p class="point_t"><%=rs.getString("p_country")%></p>
                        </td>
                        <td>
                            <p class="point_t"><%=rs.getInt("p_num")%></p>
                        </td>
                        <td>
                            <p class="point_t"><a href="./shp_detail.jsp?p_num=<%=rs.getInt("p_num")%>"><%=rs.getString("p_name")%></a></p>
                        </td>
                        <td>
                            <p class="point_t">$<%=rs.getInt("p_price")%></p>
                        </td>
                        <td>
                            <p class="point_t"><%=rs.getString("p_date")%></p>
                        </td>
                        <td class="btn_wrap">
                        <%if (rs.getString("cancle") == null) {%>
                        <p class="point_t"><input type="button" class="btn_custom" value="취소하기" onClick="location.href='shp_delete.jsp?p_num=<%=rs.getInt("p_num")%>'"></p>
                        <% }else{%>
                            <p class="point_t">취소 대기중</p>
                        <% }%>
                        </td>
                    </tr>
                    <%
							}
					
					if (rs != null)
						rs.close();
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();
					%>
                </table>
            </article>
            <!-- 콘텐츠 영역 -->
        </div>

    </section>
    <!-- 섹션 닫음 -->
    
<!--  푸터 불러옴 -->
<%@ include file="../common_set/footer.jsp" %>
</body>
</html>