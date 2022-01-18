<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shipping Agencies</title>
</head>
<body>

<!--  헤더 불러옴 -->
<%@ include file="../common_set/header.jsp" %>

	<!--  비주얼용 섹션 -->
    <section class="visual">

    </section>
    
	<!--  본문 섹션 -->
    <section class="section">
        <div class="inner join_section">
            <nav class="inner_nav">
                <ul>
                    <li class="inner_nav_header">고객센터</li>
                    <li class="active"><a href="../customer/" class="inner_nav_link">공지사항</a></li>
                    <li><a href="../customer/faq.jsp" class="inner_nav_link">FAQ (자주 묻는 질문)</a></li>
                	<li><a href="../customer/inquiries.jsp" class="inner_nav_link">1:1 문의</a></li>
                </ul>
            </nav> <!-- 부메뉴 닫음 -->

            <!-- 콘텐츠 영역 -->
            <article class="section_info">
                <h2 class="sinfo_tit">글 작성</h2>

                <!-- 글 작성 -->
                <form action="writeAction.jsp" class="writer" name="board_writer">
                    <table class="writer_table">
                        <tbody>
                            <tr>
                                <td class="writer_subtit">글 제목</td>
                                <td><input type="text" name="subject" id="subject" placeholder="글 제목을 입력하세요." maxlength="50"></td>
                            </tr>
                            <tr>
                                <td class="writer_subtit">글 내용</td>
                                <td class="writer_content">
                                    <textarea name="content" id="content" maxlength="2048"></textarea>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="btn_wrap">
                        <button type="button" onclick="javascript:history.back()"  class="btn_custom btn_custom_gray">작성 취소</button>
                        <button type="submit" class="btn_custom">글 작성</button>
                    </div>
                </form>
                <!-- 글 작성 닫음 -->
            </article>
            <!-- 콘텐츠 영역 닫음 -->
        </div>
    </section>
    <!-- 섹션 닫음 -->
    
<!--  푸터 불러옴 -->
<%@ include file="../common_set/footer.jsp" %>
</body>
</html>