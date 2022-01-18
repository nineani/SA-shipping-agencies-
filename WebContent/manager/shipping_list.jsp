<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="item.Item" %>
<%@ page import="item.itemlist" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shipping Agencies</title>
</head>
<body>
<%
	int pageNumber = 1;//기본은 1페이지를 할당
	// 'int' 타입으로 캐스팅을 해주고 그 값을 'pageNumber'변수에 저장한다
	if(request.getParameter("pageNumber") != null){
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
	}
	
%>

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
                    <li><a href="../manager/" class="inner_nav_link">회원정보</a></li>
                    <li class="active"><a href="../manager/shipping_list.jsp" class="inner_nav_link">배송대행 내역</a></li>
                    <li><a href="../manager/shipping_list_delete.jsp" class="inner_nav_link">배송대행 취소내역</a></li>
                </ul>
            </nav> <!-- 부메뉴 닫음 -->

            <!-- 콘텐츠 영역 -->
            <article class="section_info">
                <h2 class="sinfo_tit">배송대행 내역</h2>
                <table class="shp_table table_set">
                    <tr>
                        <td class="s_tit">아이디</td>
                        <td class="s_tit">일련번호</td>
                        <td class="s_tit">주문 상품명</td>
                        <td class="s_tit">국가</td>
                        <td class="s_tit">주문일</td>
                    </tr>
				<%
					itemlist aitemlist = new itemlist();//인스턴스 생성
					ArrayList<Item> list = aitemlist.getList(pageNumber);
					for(int i = 0; i < list.size(); i++){
				%>
                    <tr>
                        <td>
                            <p class="point_t"><%=list.get(i).getP_id()%></p>
                        </td>
                        <td>
                            <p class="point_t"><%=list.get(i).getP_num()%></p>
                        </td>
                        <td>
                            <p class="point_t"><a href="./shipping_detail.jsp?p_num=<%=list.get(i).getP_num()%>"><%=list.get(i).getP_name()%></a></p>
                        </td>
                        <td>
                            <p class="point_t"><%=list.get(i).getP_country()%></p>
                        </td>
                        <td>
                            <p class="point_t"><%=list.get(i).getP_date()%></p>
                        </td>
                    </tr>
                    <%
							}
					%>
                </table>
                <%
						if(pageNumber != 1) {
					%>
						<div class="btn_wrap both">
							<input type="button" class="btn_custom" value="이전" onclick="location.href='shipping_list.jsp?pageNumber=<%=pageNumber -1 %>'">
						</div>
					<% 
						} if(aitemlist.nextPage(pageNumber + 1)) {
					%>
						<div class="btn_wrap both">
							<input type="button" class="btn_custom" value="다음" onclick="location.href='shipping_list.jsp?pageNumber=<%=pageNumber +1 %>'">
						</div>
					<%
						}
					%>
            </article>
            <!-- 콘텐츠 영역 -->
        </div>

    </section>
    <!-- 섹션 닫음 -->
    
<!--  푸터 불러옴 -->
<%@ include file="../common_set/footer.jsp" %>
</body>
</html>