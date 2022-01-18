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

	<!--  비주얼용 섹션 -->
    <section class="visual">

    </section>
    
	<!--  본문 섹션 -->
    <section class="section">
        <div class="inner join_section">

            <!-- 부메뉴 -->
            <nav class="inner_nav">
                <ul>
                    <li class="inner_nav_header">이용안내</li>
                    <li class="active"><a href="../manual/" class="inner_nav_link">배송대행 안내</a></li>
                    <li><a href="../manual/mn_2.jsp" class="inner_nav_link">배송비 안내</a></li>
                    <li><a href="../manual/mn_3.jsp" class="inner_nav_link">수입금지 / 제한품목</a></li>
                    <li><a href="../manual/mn_4.jsp" class="inner_nav_link">관 / 부과세</a></li>
                    <li><a href="https://unipass.customs.go.kr/csp/persIndex.do" target="_blank"  class="inner_nav_link link">개인통관고유부호 발급</a></li>
                </ul>
            </nav> <!-- 부메뉴 닫음 -->

            <!-- 콘텐츠 영역 -->
            <article class="section_info">
                <h2 class="sinfo_tit">배송대행 안내</h2>
                <p class="sinfo_txt">
                    배송대행 서비스란, 해외에 거주하지 않아도 해외 쇼핑몰을 이용할 수 있는 서비스 입니다.<br>
                    해외 쇼핑몰에서 상품을 구매하여 저희 회사의 현지 물류센터로
                    배송시키면,<br>
                    현지 물류센터에서 상품을 받아 회원님의 한국 내 수령지 주소로 국제 배송을 대행해드리는 서비스입니다.
                </p>
                <div class="sProcess">
                    <img src="../img/img_process.gif" alt="배송대행 과정">
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