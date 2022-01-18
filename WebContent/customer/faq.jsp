<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.FaqDAO" %>
<%@ page import="dto.Faq" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shipping Agencies</title>
</head>
<body>
<%
int pageNumber = 1;
if(request.getParameter("pageNumber") != null) {
pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
}
%>
<!--  헤더 불러옴 -->
<%@ include file="../common_set/header.jsp" %>

	<!--  비주얼용 섹션 -->
    <section class="visual"></section>
    
    <!--  본문 섹션 -->
    <section class="section">
        <div class="inner join_section">
            <nav class="inner_nav">
                <ul>
                    <li class="inner_nav_header">고객센터</li>
                    <li><a href="../customer/" class="inner_nav_link">공지사항</a></li>
                    <li class="active"><a href="../customer/faq.jsp" class="inner_nav_link">FAQ (자주 묻는 질문)</a></li>
                    <li><a href="../customer/inquiries.jsp" class="inner_nav_link">1:1 문의</a></li>
                </ul>
            </nav> <!-- 부메뉴 닫음 -->

            <!-- 콘텐츠 영역 -->
            <article class="section_info">
                <h2 class="sinfo_tit">FAQ (자주 묻는 질문)</h2>
                
<div class="faq">
<%

	FaqDAO faqDAO = new FaqDAO();
	ArrayList<Faq> faqList = faqDAO.loadFAQ(pageNumber);
	for(int i = 0 ; i < faqList.size() ; i++){
%>
	<div class="faq_tab">
		<input type="radio" id="<%=faqList.get(i).getF_num()%>" name="faq">
		<label class="f_title" for="<%=faqList.get(i).getF_num()%>">
			<span class="f_category">[<%=faqList.get(i).getF_category()%>]</span>
			<span class="p"><%=faqList.get(i).getF_title() %></span>
		</label>
		<div class="f_content"><%=faqList.get(i).getF_content().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>")%></div>
	</div>
<%
	}
%>
</div>
<div class="pager_wrap">
<%if(pageNumber != 1) {%>
	<a href="faq.jsp?pageNumber=<%=pageNumber-1 %>" class="pager">이전</a>
<%} if(faqDAO.nextPage(pageNumber + 1)){%>
	<a href="faq.jsp?pageNumber=<%=pageNumber+1 %>" class="pager">다음</a>
<%}%>
</div>

     </article>
    </div>
            <!-- 콘텐츠 영역 닫음 -->
  
    </section>
    <!-- 섹션 닫음 -->
    
<!--  푸터 불러옴 -->
<%@ include file="../common_set/footer.jsp" %>
</body>
</html>