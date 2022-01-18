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
                </ul>
            </nav> <!-- 부메뉴 닫음 -->

            <!-- 콘텐츠 영역 -->
                    	<%
							int num = 0;
							if(request.getParameter("num") != null){
								num = Integer.parseInt(request.getParameter("num"));
							}
							User user = new memberlist().getUser(num);
						%>
            <article class="section_info">
                <h2 class="sinfo_tit">회원정보</h2>
                <form name="signup_form" action="member_update.jsp?num=<%=user.getNum()%>" method="post">
                    <table class="salert_txt shp_table">
                        <tr>
                            <td class="s_tit">*아이디</td>
                            <td>
                                <input type="text" name="id" value="<%=user.getId()%>">
                            </td>
                        </tr>
                        <tr>
                            <td class="s_tit">*이름</td>
                            <td>
                                <input type="text" name="name" value="<%=user.getName()%>">
                            </td>
                        </tr>
                        <tr>
                            <td class="s_tit">*이름(영문)</td>
                            <td>
                                <input type="text" name="ename" value="<%=user.getEname()%>">
                            </td>
                        </tr>
                        <tr>
                            <td class="s_tit">*비밀번호</td>
                            <td><input type="password" name="password" value="<%=user.getPassword()%>"/> 문자, 숫자로 6~12자리까지 입력해주세요</td>
                        </tr>
                        <tr>
                            <td class="s_tit">*이메일 주소</td>
                            <td><input type="email" name="email" value="<%=user.getEmail()%>" required>
                                정확한 이메일 주소를 입력해주세요
                            </td>
                        </tr>
                        <tr>
                            <td class="s_tit">*주소</td>
                            <td><input type="text" name="address" value="<%=user.getAddress()%>" required>
                                정확한 주소를 입력해주세요</td>
                        </tr>
                        <tr>
                            <td class="s_tit">*연락처</td>
                            <td><input type="tel" name="phone" value="<%=user.getPhone()%>" required> '-'없이 입력해주세요</td>
                        </tr>
                        <tr>
                            <td class="s_tit">*SMS 수신여부</td>
                            <td><%=user.getSms_check()%>
                            </td>
                        </tr>
                        <tr>
                            <td class="s_tit">*이메일 수신여부</td>
                            <td><%=user.getEmail_check()%>
                            </td>
                        </tr>
                        <tr>
                            <td class="s_tit">*성별 및 생년월일</td>
                            <td>
                                <%=user.getGender()%>
                                <input type="text" name="birth" id="birth" value="<%=user.getBirth()%>">
                                <label for="birth" required>생년월일 (주민번호 앞6자리)</label>
                            </td>
                        </tr>
                    </table>
                    <div class="btn_wrap both">
                        <input type="submit" class="btn_custom" value="저장">
                        <input type="button" class="btn_custom" value="취소" onclick="javascript:history.back()" >
                    </div>
                </form>
            </article>
            <!-- 콘텐츠 영역 -->
        </div>

    </section>
    <!-- 섹션 닫음 -->
    
<!--  푸터 불러옴 -->
<%@ include file="../common_set/footer.jsp" %>
</body>
</html>