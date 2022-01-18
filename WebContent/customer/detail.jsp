<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="bbs.BbsDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shipping Agencies</title>
</head>
<body>
<%
		int b_num = 0;
		if (request.getParameter("b_num") != null) {
			b_num = Integer.parseInt(request.getParameter("b_num"));
		}
		if (b_num == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다.')");
			script.println("location.href = 'index.jsp'");
			script.println("</script>");
		}
		Bbs bbs = new BbsDAO().getBbs(b_num);
	%>
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
                <h2 class="sinfo_tit">공지사항</h2>

                <!-- 게시판 상세 뷰 -->
                <div class="notice_view">
                    <div class="notice_tit_line">
                        <div class="notice_tit"><%= bbs.getSubject().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></div>
                        <div class="notice_date"><%= bbs.getRegister_day().substring(0, 11) + bbs.getRegister_day().substring(11, 13) + "시" +bbs.getRegister_day().substring(14, 16) + "분 " %></div>
                    </div>
                    <!-- 게시판 글 내용 시작 -->
                    <div class="notice_context">
                       <%= bbs.getContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %>
                    </div>
                    <!-- 게시판 글 내용 끝 -->
                </div>
                <!-- 게시판 상세 뷰 닫음 -->
                <div class="btn_wrap">
                <a href="../customer/" class="btn_custom">목록보기</a>
                   
                    <%
					if(id != null && id.equals(bbs.getId())){
				%>
						<a href="update.jsp?b_num=<%= b_num %>" class="btn_custom">수정</a>
						<a href="deleteAction.jsp?b_num=<%= b_num %>" class="btn_custom">삭제</a>
						
				<%		
					}
				%>
                </div>
            </article>
            <!-- 콘텐츠 영역 닫음 -->
        </div>
    </section>
    <!-- 섹션 닫음 -->
    
<!--  푸터 불러옴 -->
<%@ include file="../common_set/footer.jsp" %>
</body>
</html>