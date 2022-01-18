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
                    <li><a href="../mypage/" class="inner_nav_link">배송대행 신청내역</a></li>
                    <li><a href="../mypage/center_info.jsp" class="inner_nav_link">배송대행 센터 안내</a></li>
                    <li class="active"><a href="../mypage/myaccount.jsp" class="inner_nav_link">내 회원정보</a></li>
                </ul>
            </nav> <!-- 부메뉴 닫음 -->

            <!-- 콘텐츠 영역 -->
            <article class="section_info">
                <h2 class="sinfo_tit">내 회원정보</h2>
                    <table class="salert_txt shp_table">
                    	<%@ include file="dbconn.jsp" %>
						<%
							PreparedStatement pstmt = null;
							ResultSet rs = null;
							
							String sql = "select * from PERSONAL_INFORMATION where id = ?";
							pstmt = conn.prepareStatement(sql);
							pstmt.setString(1, id);
							rs = pstmt.executeQuery();
							
							while (rs.next()) {
						%>
                        <tr>
                            <td class="s_tit">*아이디</td>
                            <td>
                                <%=rs.getString("id")%>
                            </td>
                        </tr>
                        <tr>
                            <td class="s_tit">*이름</td>
                            <td>
                                <%=rs.getString("name")%>
                            </td>
                        </tr>
                        <tr>
                            <td class="s_tit">*이름(영문)</td>
                            <td>
                                <%=rs.getString("ename")%>
                            </td>
                        </tr>
                        <tr>
                            <td class="s_tit">*이메일 주소</td>
                            <td><%=rs.getString("email")%>
                            </td>
                        </tr>
                        <tr>
                            <td class="s_tit">*주소</td>
                            <td><%=rs.getString("address")%></td>
                        </tr>
                        <tr>
                            <td class="s_tit">*연락처</td>
                            <td><%=rs.getInt("phone")%></td>
                        </tr>
                        <tr>
                            <td class="s_tit">*SMS 수신여부</td>
                            <td><%=rs.getString("sms_check")%><p/>
                                (수신거부와 별도로 주요정책 메시지는 발송됩니다)
                                <p />
                                ※SMS수신 동의하시면 비정기적으로 진행되는 게릴라 쿠폰의 발급 대상이 되십니다.
                            </td>
                        </tr>
                        <tr>
                            <td class="s_tit">*이메일 수신여부</td>
                            <td><%=rs.getString("sms_check")%><p/>
                                (수신거부와 별도로 주요정책 메시지는 발송됩니다)
                                <p />
                                ※이메일 수신 동의하시면 뉴스레터 발송시 회원님만 사용가능한 할인 쿠폰 소식을 받아보실 수 있습니다.
                            </td>
                        </tr>
                        <tr>
                            <td class="s_tit">*성별 및 생년월일</td>
                            <td>
                                <label><%=rs.getString("gender")%> /</label>
                                <label for="birth" required><%=rs.getString("birth")%></label>
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
                    <div class="btn_wrap both">
                        <input type="button" class="btn_custom" value="수정하기" onclick="location.href='myaccount_modify.jsp'">
                    </div>
            </article>
            <!-- 콘텐츠 영역 -->
        </div>

    </section>
    <!-- 섹션 닫음 -->
    
<!--  푸터 불러옴 -->
<%@ include file="../common_set/footer.jsp" %>
</body>
</html>