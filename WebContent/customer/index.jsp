<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
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
 		
 
 
                <!-- 게시판 영역 -->
                <div class = "container">
                	<div class ="row">
                <table class="info_table">
                    <thead>
                        <tr>
                            <th class="num">번호</th>
                            <th class="subject">제목</th>
                            <th class="id">작성자</th>
                            <th class="regist_day">등록일</th>
                            <th class="hit">조회</th>
                        </tr>
                    </thead>
                    <tbody>
                     
					<% 
						BbsDAO bbsDAO = new BbsDAO();
						ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
						for(int i = 0; i < list.size(); i++) {
					%>
					<tr>
						<td><%= list.get(i).getB_num() %></td>
						<td><a href="detail.jsp?b_num=<%= list.get(i).getB_num() %>"><%= list.get(i).getSubject()%></a></td> <!-- 제목을 눌럿을경우 보여주는 페이지로 이동   -->
						<td><%= list.get(i).getId() %></td>
						<td><%= list.get(i).getRegister_day().substring(0, 11) + list.get(i).getRegister_day().substring(11, 13) + "시" +list.get(i).getRegister_day().substring(14, 16) + "분 " %></td>
						<td></td>
					</tr>
					<%
						}
					%>	
                    </tbody>

                </table>
                <!-- 게시판 닫음 -->

                <!-- 게시판 내비 -->
                <div class="table_nav">
                    <!-- 게시판 검색 -->
                    <div class="searcher">
                        <form action="" class="search">
                            <input type="search" name="search_list" class="input_search" />
                            <input type="button" value="검색" class="btn_search">
                        </form>
                    </div>
                    <!-- 게시판 페이지 -->
                   <!--  <div class="pagination">
                        <ul>
                            <li class="pagi_prev">&laquo; 이전</li>
                            <li class="pagi_num active">1</li>
                            <li class="pagi_num">2</li>
                            <li class="pagi_num">3</li>
                            <li class="pagi_next">다음 &raquo;</li>
                        </ul>
                    </div> -->
                    <%
				if(pageNumber != 1) {
			%>
				<a href = "index.jsp?pageNumber=<%=pageNumber -1 %>" class="btn btn-success btn-arrow-left">이전</a>
			<% 
				} if(bbsDAO.nextPage(pageNumber + 1)) {
			%>
				<a href="index.jsp?pageNumber=<%=pageNumber + 1 %>" class="btn btn-success btn-arrow-left">다음</a>
			<%
				}
			%>
                    <!-- 게시판 버튼 -->
                    <div class="btn_wrap">
                        <a href="../customer/writer.jsp" class="btn_custom">글쓰기</a>
                    </div>
                </div>
             </div>
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