<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="user.User" %>
<%@ page import="member.memberlist" %>
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
                    <li class="inner_nav_header">관리자페이지</li>
                    <li class="active"><a href="../manager/" class="inner_nav_link">회원정보</a></li>
                    <li><a href="../mypage/shipping_list.jsp" class="inner_nav_link">배송대행 내역</a></li>
                	<li><a href="../manager/shipping_list_delete.jsp" class="inner_nav_link">배송대행 취소내역</a></li>
                </ul>
            </nav> <!-- 부메뉴 닫음 -->

            <!-- 콘텐츠 영역 -->
            <article class="section_info">
                <h2 class="sinfo_tit">회원정보</h2>
                
                    <table class="salert_txt shp_table">
						<%
							int num = 0;
							if(request.getParameter("num") != null){
								num = Integer.parseInt(request.getParameter("num"));
							}
							User user = new memberlist().getUser(num);
						%>
                        <tr>
                            <td class="s_tit">*아이디</td>
                            <td>
                                <%=user.getId()%>
                            </td>
                        </tr>
                        <tr>
                            <td class="s_tit">*이름</td>
                            <td>
                                <%=user.getName()%>
                            </td>
                        </tr>
                        <tr>
                            <td class="s_tit">*이름(영문)</td>
                            <td>
                                <%=user.getEname()%>
                            </td>
                        </tr>
                        <tr>
                            <td class="s_tit">*이메일 주소</td>
                            <td><%=user.getEmail()%>
                            </td>
                        </tr>
                        <tr>
                            <td class="s_tit">*주소</td>
                            <td><%=user.getAddress()%></td>
                        </tr>
                        <tr>
                            <td class="s_tit">*연락처</td>
                            <td><%=user.getPhone()%></td>
                        </tr>
                        <tr>
                            <td class="s_tit">*SMS 수신여부</td>
                            <td><%=user.getSms_check()%><p/>
                                (수신거부와 별도로 주요정책 메시지는 발송됩니다)
                                <p />
                                ※SMS수신 동의하시면 비정기적으로 진행되는 게릴라 쿠폰의 발급 대상이 되십니다.
                            </td>
                        </tr>
                        <tr>
                            <td class="s_tit">*이메일 수신여부</td>
                            <td><%=user.getEmail_check()%><p/>
                                (수신거부와 별도로 주요정책 메시지는 발송됩니다)
                                <p />
                                ※이메일 수신 동의하시면 뉴스레터 발송시 회원님만 사용가능한 할인 쿠폰 소식을 받아보실 수 있습니다.
                            </td>
                        </tr>
                        <tr>
                            <td class="s_tit">*성별 및 생년월일</td>
                            <td>
                                <label><%=user.getGender()%> /</label>
                                <label for="birth" required><%=user.getBirth()%></label>
                            </td>
                        </tr>
                    </table>
                    
                    <div class="btn_wrap both">
                        <input type="button" class="btn_custom" value="수정" onclick="location.href='./member_modify.jsp?num=<%=user.getNum()%>'">
                        <input type="button" class="btn_custom" value="삭제" onclick="location.href='./member_delete.jsp?num=<%=user.getNum()%>'" >
                        <input type="button" class="btn_custom" value="목록" onclick="location.href='index.jsp'">
                        
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