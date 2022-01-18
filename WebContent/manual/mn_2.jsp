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
                    <li class="active"><a href="../manual/mn_2.jsp" class="inner_nav_link">배송비 안내</a></li>
                    <li><a href="../manual/mn_3.jsp" class="inner_nav_link">수입금지 / 제한품목</a></li>
                    <li><a href="../manual/mn_4.jsp" class="inner_nav_link">관 / 부과세</a></li>
                    <li><a href="https://unipass.customs.go.kr/csp/persIndex.do" target="_blank"  class="inner_nav_link link">개인통관고유부호 발급</a></li>
                </ul>
            </nav> <!-- 부메뉴 닫음 -->

            <!-- 콘텐츠 영역 -->
            <article class="section_info">
                <h2 class="sinfo_tit">배송비 안내</h2>

                <table class="info_table">
                    <thead>
                        <tr>
                            <th>지역</th>
                            <th>구분</th>
                            <th>배송비 측정 기준 무게</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td rowspan="3" class="b">미국</td>
                            <td>캘리포니아 (CA)</td>
                            <td>중량과 부피무게 중 큰 무게 적용</td>
                        </tr>
                        <tr>
                            <td>오레곤 (OR)</td>
                            <td>중량과 부피무게 중 큰 무게 적용</td>
                        </tr>
                        <tr>
                            <td>뉴저지 (NJ)</td>
                            <td>중량과 부피무게 중 큰 무게 적용</td>
                        </tr>
                        <tr>
                            <td rowspan="2" class="b">일본 도쿄 (TK)</td>
                            <td>항공</td>
                            <td>부피무게와 중량이 30Kg 미만인 경우 중량, 부피무게와 중량이 30Kg 이상인 경우 중량과 부피무게 중 큰 무게 적용</td>
                        </tr>
                        <tr>
                            <td>EMS</td>
                            <td>중량과 부피무게 중 큰 무게 적용</td>
                        </tr>
                        <tr>
                            <td class="b">중국 상하이 (SH)</td>
                            <td>항공</td>
                            <td>중량과 부피무게 중 큰 무게 적용</td>
                        </tr>
                        <tr>
                            <td class="b">독일 (DE)</td>
                            <td>항공</td>
                            <td>중량과 부피 무게 차이가 20kg 이상인 경우 부피무게 적용<br>
                                중량과 부피 무게 차이가 20kg 미만인 경우 부피무게 50% 할인 후 중량/부피 중 더 큰 무게 적용</td>
                        </tr>
                        <tr>
                            <td class="b">스페인 (ES)</td>
                            <td>항공</td>
                            <td>중량과 부피무게 중 큰 무게 적용</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <img src="../img/img_price_shipping.gif" alt="부피 측량">
                            </td>
                        </tr>
                    </tbody>
                </table>

                <h2 class="sinfo_tit">부가서비스 요금</h2>

                <table class="info_table">
                    <thead>
                        <tr>
                            <th>서비스 이름</th>
                            <th>서비스 설명</th>
                            <th>비고</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="b">묶음 배송</td>
                            <td>같은 지역의 같은 서비스끼리 요청에 따라 묶어서 한번에 배송하는 서비스<br>
                                (배송대행은 신청완료 단계에서, 구매대행은 상품가 결제완료 단계에서만 신청가능<br>
                                상품 입고 후에는 신청/해지 불가. 구매대행과 배송대행은 서로 묶음배송 불가)</td>
                            <td>$2<br>
                                3건 초과시 1건 마다 $1 추가<br>
                                최대 5건까지 가능</td>
                        </tr>
                        <tr>
                            <td class="b">보험 서비스</td>
                            <td>단일 상품가 $500 이상인 경우</td>
                            <td>$25</td>
                        </tr>
                        <tr>
                            <td class="b">안심포장 서비스</td>
                            <td> 유리, 도기, 병 등 파손의 위험이 높은 제품의 추가적인 완충 포장 서비스<br>
                                (미가입시 보상 제외)</td>
                            <td>$3<br>
                                (한 박스당 요금이며 상품의 크기, 모양, 성분, 멀티박스 수량 등에<br>따라 인심포장 불가 또는 추가비용 발생)</td>
                        </tr>
                        <tr>
                            <td class="b">반송</td>
                            <td>반송/교환 신청 시 요청 주소에 따른 반송 서비스</td>
                            <td>$5 반송수수료 + 현지 반송 비용</td>
                        </tr>
                        <tr>
                            <td class="b">재포장</td>
                            <td>쇼핑몰에서 배송된 상태 그대로 보내지 않고 다시 포장하는 서비스<br>(* 무료 재포장 서비스 이후 검량 처리된 상품의 추가 재포장을 원하실 경우<br>$3의
                                추가 수수료가 발생하며 성수기 시즌 및 현지 상황에 따라 재포장이 불가능할 수 있습니다.)</td>
                            <td>무료</td>
                        </tr>
                        <tr>
                            <td class="b">합배송</td>
                            <td>신청서 내의 여러 개의 상품을 한 박스에 재포장하는 서비스</td>
                            <td>무료</td>
                        </tr>
                        <tr>
                            <td class="b">창고 보관</td>
                            <td>물류센터에 상품 도착 후 발송 하기 전 까지 보관해드리는 서비스<br>
                                (상품 도착 후 90일 이후에는 사전 고지 없이 자체 폐기 또는 임의로 처분하여<br>
                                보관료로 충당할 수 있습니다)</td>
                            <td>상품 입고일로 부터 30일 초과 시 일일 $2씩 부과 (30일까지 무료)</td>
                        </tr>
                        <tr>
                            <td class="b">사진 촬영</td>
                            <td>요청에 따라 도착한 상품의 상태 사진 제공 서비스</td>
                            <td>장당 $1</td>
                        </tr>
                        <tr>
                            <td class="b">멀티박스</td>
                            <td>배송비는 한번에 청구되나 물품의 크기가 크거나 수량이 많아 2개 이상의 박스로<br>
                                배송 될 경우 다수의 박스 포장 서비스</td>
                            <td>$3</td>
                        </tr>
                        <tr>
                            <td class="b">위험물 배송</td>
                            <td>일반 배터리가 포함된 제품에 대하여 항공 배송해드리는 독일(DE)센터 전용 서비스<br>
                                (단, 리튬이온배터리는 배송이 불가하며 일반 배터리 중량 5kg 이하, 충전 잔량<br>
                                30% 이하(중고제품에 한정)만 배송 가능)</td>
                            <td>$2.5</td>
                        </tr>
                        <tr>
                            <td class="b">미신청</td>
                            <td>신청서가 작성되지 않고 센터에 도착하여 미신청건으로 등록 및 분류 처리되는
                                상품에 대한 처리 수수료</td>
                            <td>$1</td>
                        </tr>



                    </tbody>
                </table>
            </article>
            <!-- 콘텐츠 영역 -->
        </div>

    </section>
    <!-- 섹션 닫음 -->
    
<!--  푸터 불러옴 -->
<%@ include file="../common_set/footer.jsp" %>
</body>
</html>