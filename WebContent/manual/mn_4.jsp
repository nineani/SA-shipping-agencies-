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
                    <li><a href="../manual/mn_3.jsp" class="inner_nav_link">수입금지 / 제한품목</a></li>
                    <li class="active"><a href="../manual/mn_4.jsp" class="inner_nav_link">관 / 부과세</a></li>
                    <li><a href="https://unipass.customs.go.kr/csp/persIndex.do" target="_blank"  class="inner_nav_link link">개인통관고유부호 발급</a></li>
                </ul>
            </nav> <!-- 부메뉴 닫음 -->

                        <!-- 콘텐츠 영역 -->
            <article class="section_info">
                <h2 class="sinfo_tit">통관 시 주의사항</h2>
                <p class="sinfo_txt">
                    모든 수입 물품은 통관 과정을 거치며 물품에 따라 관부가세가 발생할 수 있습니다.<br>
                    관부가세는 품목 및 금액에 따라 면세 혜택을 받거나 합산과세로 예상치 못한 세금이 발생할 수 있습니다.<br>
                    통관 중 수입금지 품목이 있을 경우 통관 과정에서 폐기 처리 될 수 있으며 수수료가 발생할 수 있습니다.
                </p>
                <div class="btn_group">
                    <a href="../manual/mn_3.jsp" target="_blank">수입금지품목 바로가기</a>
                </div>

                <h2 class="sinfo_tit">목록통관 및 일반통관</h2>
                <table class="info_table">
                    <thead>
                        <tr>
                            <th>&nbsp;</th>
                            <th>목록통관</th>
                            <th>일반통관</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="b">면세 기준</td>
                            <td>총 결제금액<br>
                                = (미국) USD 200 이하<br>
                                = (중국/일본/독일/영국/스페인) USD 150 이하<br>
                                총 결제금액 = 상품가 + 현지 배송비 + TAX<br>
                                관세청에서 고지한 과세운임 미포함</td>
                            <td>총 결제금액 = USD 150 이하<br><br>

                                총 결제금액 = 상품가 + 현지 배송비 + TAX<br>
                                관세청에서 고지한 과세운임 미포함</td>
                        </tr>
                        <tr>
                            <td class="b">특이사항</td>
                            <td>면세 기준에 해당하는 경우<br>별도의 수입절차가 없음</td>
                            <td>목록통관에서 배제된 품목은 일반 통관에 해당됨<br><br>

                                · 식, 의약품, 향수(60ml 이상) 등의 일부 품목<br>
                                · 기타 법 제 226조에 따른 세관장 확인 대상 물품<br>
                                · 목록통관이 타당하지 아니하다고 세관장이 인정하는 물품
                                자가 사용 목적이 아닌<br>판매용 목적의 모든 사업자 통관</td>
                        </tr>
                        <tr>
                            <td class="b">주의사항</td>
                            <td colspan="2">
                                · 상품의 합계금액이 목록 통관 기준금액이더라도 목록 통관이 아닌 물품이 섞여 있을 경우 일반통관으로 진행됩니다.<br>
                                · 목록통관 대상 품목으로 신청한 경우에도 세관의 결정에 따라 일반통관으로 진행 될 수 있습니다.<br>
                                · 회원님께서 신청하신 정보로 수입신고 되므로 정확하게 써주셔야 하며 허위 기재 시의 불이익은 저희 회사에서
                                책임 질 수 없습니다.<br>
                                · 판매목적의 사업자의 경우에는 사업자 통관을 진행하는 것이 원칙이며 별도의 사업자 통관 수수료가 발생할 수 있습니다.<br>
                                · 독일 센터의 경우 과세범위로 물품 구매시 관부가세에 구내장치장 보관료가 실비로 추가 청구 될 수 있습니다.
                                (사업자 통관 동일)<br><br>
                                [사업자 통관 수수료]<br>

                                · [미국]CA(항공) / OR / NJ - 사업자통관수수료 건당 15달러(배송비결제시 청구)<br>
                                · [일본]TK(항공) - 사업자 통관 수수료 없음 / TK(해상): 건당 33,000원<br>
                                · [중국]SH(항공) - 사업자통관수수료 건당 15달러(배송비결제시 청구)<br>
                                SH(해상) - 건당 22,000원 + 창고 보관료 20,000원 + 보세운송료 10,000원 = 총 52,000원 발생 (부가세 포함)<br>
                                · [독일] - 건당 33,000원 (과세범위로 물품 구매시 관부가세에 구내장치장 보관료가 실비로 추가 청구 될 수 있습니다.)<br>
                                · [영국] - 사업자통관수수료 건당 15달러(배송비결제시 청구)<br>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <h2 class="sinfo_tit">합산과세</h2>
                <p class="sinfo_txt">
                    같은 날 두건 이상이 통관됨에 따라 건당 면세 기준 금액임에도 과세되는 세금<br>

                    · 동일 수취인 앞으로 동일한 날짜에 2건 이상 수입 신고 시<br>
                    · 입항날짜가 다른경우 자가사용으로 인정되면 개별 면세하되, 전산자료 등을 분석하여 부당면세 혐의가 있는 경우 추징 됩니다.
                </p>

                <h2 class="sinfo_tit">관부가세 계산법</h2>
                <p class="sinfo_txt">
                    과세 가격 = 상품 총 결제 금액 X 관세청 고시환율 + 과세운임<br>
                    관세 = 과세가격 X 구입한 품목의 관세율<br>
                    부가세 = (과세가격 + 관세) X 0.1
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