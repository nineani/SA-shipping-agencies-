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
                    <li><a href="../manual/" class="inner_nav_link">배송대행 안내</a></li>
                    <li><a href="../manual/mn_2.jsp" class="inner_nav_link">배송비 안내</a></li>
                    <li class="active"><a href="../manual/mn_3.jsp" class="inner_nav_link">수입금지 / 제한품목</a></li>
                    <li><a href="../manual/mn_4.jsp" class="inner_nav_link">관 / 부과세</a></li>
                    <li><a href="https://unipass.customs.go.kr/csp/persIndex.do" target="_blank"  class="inner_nav_link link">개인통관고유부호 발급</a></li>
                </ul>
            </nav> <!-- 부메뉴 닫음 -->

           <!-- 콘텐츠 영역 -->
            <article class="section_info">
                <h2 class="sinfo_tit">수입금지 / 제한품목</h2>

                <p class="sinfo_txt">
                    통관시 수입 금지 품목에 해당되면 폐기 처분 되며
                    이와 관련하여 추가 수수료가 발생 되므로 수입 금지 품목을 꼭 확인하시기 바랍니다.<br>
                    아래의 수입 금지 품목 외에도 의심이 가는 품목이라면<br>
                    구입전 관세사/인천세관/식약청 등을 통해 확인하신 후 구매하시기 바랍니다.
                    <b>
                        관세사 문의번호: 125
                    </b>
                </p>
                <div class="btn_group">
                    <a href="http://www.foodsafetykorea.go.kr/portal/fooddanger/foodDirectImportBlock.do?menu_grp=MENU_NEW02&menu_no=3594"
                        target="_blank">식약처 외국 위해 식품(식약처)보기</a>
                    <a href="http://www.mfds.go.kr/index.do" target="_blank">식약처 허가 의약품(식약처) 보기</a>
                </div>

                <h2 class="sinfo_tit">수입금지 / 제한품목 리스트</h2>
                <p class="sinfo_txt no_center">
                    - 동물(가축)<br>
                    - 재식용 식물(묘, 묘목, 구근, 종자)<br>
                    - 금/은 보석류, 현금, 수표, 채권, 기타 유가증권<br>
                    - 국가/정부의 기밀에 해당되는 물품<br>
                    - 알코올 함량이 높은 가연성 향수, 스프레이식 화장품<br>
                    - 고압가스, 인화성물질(페인트, 오일류등), 화기부품(라이터, 성냥, 기타 연료등) 및 가연성 제품<br>
                    - 리튬이온배터리 및 보조배터리류 (배터리 단품 불가)<br>
                    - 도검등 무기류, 총류(BB탄 및 가스총, 장식용 포함)<br>
                    - 마약 및 불법적 약, 마취제<br>
                    - 아스피린등의 의약품 및 불법적 약품<br>
                    - 혈액이 포함되었거나 인체의 일부<br>
                    - 가공 육포류<br>
                    - 성인 영상물 (포르노그라피)<br>
                    - 지적 재산권 침해 제품(위조/모조품, 카피)<br>
                    - 기타 검역에 불합격된 물품
                </p>
                <p class="sinfo_txt no_center">
                    ※ 영양제 및 반려동물 제품은 수입금지 품목이 포함되어있는 경우가 많으므로 구매전 성분확인 및 식약청으로 확인 부탁드립니다 (비타민 및 건강보조제는 1회 6병 까지만 통관
                    가능합니다)<br>
                    ※ 헌법 질서를 문란하게 하거나, 공공의 안녕 질서 또는 풍속을 해치는 서적, 간행물, 도화 영화, 음반, 비디오물, 조각물, 기타 이에 준하는 물품은 발송 및 통관이 불가능할 수
                    있습니다<br>
                    ※ 성인용품 중 통관시 분쟁의 여지가 높거나, 풍속을 해치는 물품은 발송 및 통관이 어려울 수 있습니다<br>
                    ※ 다수 제품중, 일부 제품이 통관 불가로 폐기처분시, 폐기 수수료 및 카톤 분할 수수료, 검역 수수료등이 발생될 수 있습니다
                </p>

            </article>
            <!-- 콘텐츠 영역 -->
        </div>

    </section>
    <!-- 섹션 닫음 -->
    
<!--  푸터 불러옴 -->
<%@ include file="../common_set/footer.jsp" %>
</body>
</html>