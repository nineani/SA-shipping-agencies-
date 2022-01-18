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
                <h2 class="sinfo_tit">신청내역 상세</h2>
                <form action="../shipping/" method="POST" name="shp_">

                    <div>
                        <!-- 상세내역 출력 -->
                        <%
							int num = 0;
							if(request.getParameter("p_num") != null){
								num = Integer.parseInt(request.getParameter("p_num"));
							}
							Item item = new itemlist().getitem(num);
						%>
                        <div class="set_url">
                            <span>쇼핑몰 URL</span>
                            <input type="url" name="s_url" value="<%=item.getS_url()%>" disabled />
                        </div>
                        <table class="shp_table">
                            <tr>
                                <td class="s_tit">주문 국가명</td>
                                <td class="inner_t">
                                    <%=item.getP_country()%>
                                <td class="s_tit">일련번호</td>
                                <td class="inner_t">
                                    <%=item.getP_num()%>
                                </td>
                            </tr>
                            <tr>
                                <td class="s_tit">영문 상품명</td>
                                <td class="inner_t">
                                    <%=item.getP_name()%>
                                </td>
                                <td class="s_tit">품목</td>
                                <td class="inner_t">
                                    대분류 : <%=item.getP_category()%> / 소분류 : <%=item.getP_item()%>
                                </td>
                            </tr>
                            <tr>
                                <td class="s_tit">브랜드/셀러</td>
                                <td class="inner_t">
                                    <%=item.getP_brand()%>
                                </td>
                                <td class="s_tit">수량</td>
                                <td class="inner_t">
                                    <%=item.getP_count()%>
                                </td>
                            </tr>
                            <tr>
                                <td class="s_tit">단가</td>
                                <td class="inner_t">
                                    $<%=item.getP_price()%>
                                </td>
                                <td class="s_tit">상품 URL</td>
                                <td class="inner_t">
                                    <a href="<%=item.getP_url()%>" target="_blank"><%=item.getP_url()%></a>
                                </td>
                            </tr>
                            <tr>
                            </tr>
                            <tr>
                                <td class="s_tit">색상</td>
                                <td class="inner_t">
                                    <%=item.getP_color()%>
                                </td>
                                <td class="s_tit">사이즈</td>
                                <td class="inner_t">
                                    <%=item.getP_size()%>
                                </td>
                            </tr>
                            <tr>
                                <td class="s_tit">결제 방식</td>
                                <td class="inner_t">
                                    <%=item.getP_pay()%>
                                </td>
                                <td class="s_tit">주문일</td>
                                <td class="inner_t">
                                    <%=item.getP_date()%>
                                </td>
                            </tr>
                            <tr>
                                <td class="s_tit">상품 이미지</td>
                                <td colspan="3">
                                    <div class="imgPreview"><img src="../img/<%=item.getP_img()%>" alt=""></div>
                                </td>
                            </tr>
                        </table>
                        <div class="btn_wrap">
                            <a href="../manager/shipping_list.jsp" class="btn_custom">목록</a>
                        </div>
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