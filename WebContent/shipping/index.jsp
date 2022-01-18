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

    <!-- 콘텐츠 섹션 -->
    <section class="section">
        <div class="inner">
            <article class="section_info w-100">
                <h2 class="sinfo_tit">배송대행 신청</h2>
                <p class="sinfo_txt">
                    배송대행 서비스란, 해외에 거주하지 않아도 해외 쇼핑몰을 이용할 수 있는 서비스 입니다.<br>
                    해외 쇼핑몰에서 상품을 구매하여 저희 회사의 현지 물류센터로 배송시키면, 현지 물류센터에서 상품을 받아<br>
                    회원님의 한국 내 수령지 주소로 국제 배송을 대행해드리는 서비스입니다.
                </p>

                <h4 class="salert_tit">신청서 작성 전 필수 확인사항</h4>
                <div class="btn_group">
                    <a href="../manual/mn_3.jsp">수입금지 / 제한품목 안내</a>
                    <a href="../manual/mn_4.jsp">관 / 부가세 안내</a>
                    <a href="../manual/mn_2.jsp">배송비 안내 안내</a>
                </div>
                <p class="salert_txt_scr">
                    · 상품에 따라 수량제한 또는 통관이 불가할 수 있습니다.<br>
                    · 신청서 작성 전 관부가세 발생 유무 및 통관 가능 여부에 대해 반드시 확인해 주세요.<br>
                    · 배송 신청서는 신청단계에서만 수정, 삭제하실 수 있습니다.<br>
                    · 상품주문후 배송대행신청서 미신청일 경우, 당사의 프로모션 진행 제한 및 입고지연, 보관료 발생등의 불이익이 발생될 수 있습니다.<br>
                    · 정확한 상품가격 미기재 또는 오류 기재시 세관에서 과태료가 부과될 수 있습니다.<br>
                    · 도착되지 않은 추후 받을 물품은 다른 기타신청서와 묶음처리 할수 없고 정책상 단독배송 받으셔야하므로 나눔배송은 불가합니다.<br>
                    · 주문하신 상품의 배송대행 신청서를 늦게 작성하실 경우 입고 지연 또는 보관료(상품 도착 후 30일까지 무료) 등이 발생할 수 있으니 반드시 상품 주문 직후 배송대행 신청서를
                    작성하시기 바랍니다.<br>
                    · 주문하신 상품이 센터에 도착한 후에 신청서를 작성하신 경우 고객센터로 연락 주셔야만 빠른 입고 처리가 가능합니다.<br>
                    · 작성해주신 배송대행 신청서 내용으로 수입 신고가 진행되며 쇼핑몰에서 장바구니에 넣고 한번에 주문/결제된 내역이 1건의 신청서이어야 합니다.<br>
                    · 타 쇼핑몰 구매건이나 동일 쇼핑몰이더라도 한번에 주문하시지 않은 경우 신청서는 주문건수에 따라 각각 작성해주셔야하며 각각의 주문 및 신청건들을 한번에 배송 받길 희망하시는 경우
                    상품이 센터에 도착하기 전 묶음서비스를 신청해 주시기 바랍니다.
                </p>

                <h4 class="salert_tit">배송대행 신청 시 주의사항</h4>
                <p class="salert_txt_scr">
                    1. 배송신청서는 해외 쇼핑몰에 주문 즉시 작성하셔야 하며, 신청서 늦게작성하거나 트레킹번호 미기재로 인해 미 신청건으로 도착 시 배송지연 등 불이익이 발생할 수 있습니다.
                    <br><br>
                    2. 배송신청서에 기재되는 상품금액, 수량금액, 수량 등 모든 정보는 세관신고서에 그대로 반영되므로 허위로 작성 불가하며 특히 세금 회피를 위해 구매하신 가격보다 낮게 기재하실
                    경우 과태료 대상이 될 수 있습니다. 또한 수입 금지 상품이나 선적이 불가능한 상품의 구매로인해 발생되는 불이익은 아이포터에서 책임지지 않으며 통관상 문제 및 배송과정 중 발생된
                    사고에 대한 보상은 배송신청서상 정보를 기준으로 적용됩니다.
                    <br><br>
                    3. 대형화물의 경우 추가 착불 택배비가 발생되며, 대형화물 분류 기준은 홈페이지 이용안내 참고 바랍니다. 단, "중국"의 경우 대형화물 기준에 해당되지 않더라도 각 택배사 기준에
                    따라 소형화물에서 제외되면 착불택배비가 청구 될 수 있습니다.
                    <br><br>
                    4. 무료로 받은 $0 물품의 경우도 가격 및 정확한 물품명을 신청서에 기재하여 배송 받아야 합니다. 세관 신고시 $0은 신고자체가 되지 않기 때문에 최소 $1 이상으로 기재해
                    주셔야 하며, 면세범위가 초과되는 경우 과세 추징 될 수 있습니다.
                    <br><br>
                    5.EBAY(이베이) 배송대행은 미국 전 센터에서 가능하나 상품명,이미지,링크 등을 작성해주시지 않는경우 오류입고처리 및 문제 시 보상진행이 불가하기 때문에 꼭 이미지 및 링크 등
                    정확한 신청서 작성을 진행해주시기 바랍니다.
                    <br><br>
                    6. 중고/리퍼 제품은 보상접수가 불가합니다.
                    <br><br>
                    7. 1 Buy 1 Free 으로 물품 하나를 무료로 받았다고 하더라도, 세관에서는 물품을 금액이 아닌 가치로 판단하기 때문에 실제 그 물품의 판매가격으로 신고를 하셔야 합니다.
                    고객님께서 판단하에 금액을 반반씩 기재할 수는 있지만, 성실신고 시 세관에서 과세 추징 될 수 있는 점 참고 부탁 드립니다.
                    <br><br>
                    8. 기프트박스를 해당 쇼핑몰에서 구매 또는 신청하신 경우라도, 실제 기프트박스가 미 도착하는 경우에는 함께 발송되지 않으며 따로 안내드리지 않습니다.
                    <br><br>
                    9. 스마트폰, 태블릿 PC 제품의 경우 국내배송시 배송사측의 요구에 의해 통관진행중 별도의 파손면책 동의서를 제출해야 할 수 있으며 보험 미가입시 제품에 대한 파손이 발생되더라도
                    아이포터 보상서비스 혜택 제공이 불가 합니다.
                    <br><br>
                    10. 제3주소로 (해외 현지 내 배송) 배송은 신청 및 배송진행이 절대 불가 합니다.
                    <br><br>
                    11. 전자상거래로 구매한 상품에 대한 한국 배송대행 서비스이므로 기타 다른 경로로 물품 구입하셨을 경우 고객센터로 문의 부탁 드립니다. (☎ 1599-8257)
                    <br><br>
                    12. 상품의 냉장보관 및 별도의 보관요청은 불가 합니다.
                    <br><br>
                    13. 배송대행은 택배형태(트레킹번호있는)만 가능합니다. 우편의 경우는 물품의 수령확인이 어렵기 때문에 배송대행이 불가합니다.
                    <br><br>
                    14. 택배(종이 또는 폴리백)박스가 아닌 브랜드 상품박스[포장] 자체로 입고되는 상품의 경우 별도의 내품검수가 없으므로 검수실수에 대한 보상에서 제외됩니다. [브랜드박스
                    내품검수시 상품가치하락, 2차파손, 오염등의 사고가 발생될 수 있어 검수불가]
                    <br><br>
                    17. 배송대행신청시 상품수량이 50개 이상인 경우 자가사용을 위한 수입으로 보기 어려워 목록통관 취하 후 일반통관으로 진행됩니다.
                    <br><br>
                    16. 일본(TK)센터 해상편의 경우 도료(매니큐어, 페인트, 인화성 도료 및 기타) 또는 인화성 물질이 포함된 물품은 해상편 선적 불가합니다.
                </p>

                <!-- 약관 동의 -->
                <div class="check_wrap">
                    <input type="checkbox" name="term1" id="term1">
                    <label for="term1">위의 내용을 모두 확인하였으며, 이에 동의합니다. (동의해야 다음으로 진행할 수 있습니다.)</label>
                </div>

                <form action="index_insert.jsp" method="POST" name="shp_" enctype="multipart/form-data">
                    <div id="term2">
                        <!-- 국가 선택 -->
                        <h4 class="salert_tit">배송대행 국가 선택</h4>
                        <p class="salert_txt">
                            주문하신 상품에 맞는 국가를 선택하세요.<br>
                            잘못 선택하실 경우 입고 확인이 어려우며 신청 완료 후에는 수정이 불가한 점 주의바랍니다.
                        </p>
                        <!-- 국가 선택 라디오 리스트 -->
                        <div class="check_wrap">
                            <div class="wrap_el">
                                <input type="radio" name="p_country" value="캘리포니아" id="c_cal">
                                <label for="c_cal">
                                    <i class="flag_img">
                                        <img src="../img/country_us.png" alt="미국">
                                    </i>
                                    <span class="el_txt">캘리포니아(CA)</span>
                                </label>
                            </div> <!-- 요소 -->
                            <div class="wrap_el">
                                <input type="radio" name="p_country" value="오레건" id="c_ore">
                                <label for="c_ore">
                                    <i class="flag_img">
                                        <img src="../img/country_us.png" alt="미국">
                                    </i>
                                    <span class="el_txt">오레건(OR)</span>
                                </label>
                            </div> <!-- 요소 -->
                            <div class="wrap_el">
                                <input type="radio" name="p_country" value="뉴저지" id="c_nj">
                                <label for="c_nj">
                                    <i class="flag_img">
                                        <img src="../img/country_us.png" alt="미국">
                                    </i>
                                    <span class="el_txt">뉴저지(NJ)</span>
                                </label>
                            </div> <!-- 요소 -->
                            <div class="wrap_el">
                                <input type="radio" name="p_country" value="일본" id="c_jp">
                                <label for="c_jp">
                                    <i class="flag_img">
                                        <img src="../img/country_jp.png" alt="일본">
                                    </i>
                                    <span class="el_txt">일본(TK)</span>
                                </label>
                            </div> <!-- 요소 -->
                            <div class="wrap_el">
                                <input type="radio" name="p_country" value="중국" id="c_sh">
                                <label for="c_sh">
                                    <i class="flag_img">
                                        <img src="../img/country_cn.png" alt="중국">
                                    </i>
                                    <span class="el_txt">중국(SH)</span>
                                </label>
                            </div> <!-- 요소 -->
                            <div class="wrap_el">
                                <input type="radio" name="p_country" value="독일" id="c_de">
                                <label for="c_de">
                                    <i class="flag_img">
                                        <img src="../img/country_de.png" alt="독일">
                                    </i>
                                    <span class="el_txt">독일(DE)</span>
                                </label>
                            </div> <!-- 요소 -->
                            <div class="wrap_el">
                                <input type="radio" name="p_country" value="영국" id="c_uk">
                                <label for="c_uk">
                                    <i class="flag_img">
                                        <img src="../img/country_uk.png" alt="영국">
                                    </i>
                                    <span class="el_txt">영국(UK)</span>
                                </label>
                            </div> <!-- 요소 -->

                        </div>
                    </div>

                    <div id="term3">
                        <!-- 상품 정보 입력 -->
                        <h4 class="salert_tit">상품정보 입력</h4>
                        <div class="set_url">
                            <span>쇼핑몰 URL</span>
                            <input type="text" name="s_url" placeholder="예) www.amazon.com" />
                            <span>(예:www.amazon.com 형태로 등록, http://, https:// 제거)</span>
                        </div>
                        <table class="shp_table">
                            <tr>
                                <td class="s_tit">영문 상품명*</td>
                                <td>
                                    <input type="text" name="p_name" id="p_name"
                                        placeholder="예) Nike Air Max Running Shoes" required />
                                </td>
                                <td class="s_tit">품목*</td>
                                <td>
                                    <select name="p_category" id="p_category" required></select>
                                    <input type="text" name="p_item" id="p_item" placeholder="검색하려는 품목명을 입력하세요."
                                        required>
                                </td>
                            </tr>
                            <tr>
                                <td class="s_tit">브랜드/셀러*</td>
                                <td>
                                    <input type="text" name="p_brand" id="p_brand" placeholder="예) Nike" required>
                                </td>
                                <td class="s_tit">수량*</td>
                                <td>
                                    <input type="text" name="p_count" id="p_url" placeholder="0" required>
                                </td>
                            </tr>
                            <tr>
                                <td class="s_tit">단가*</td>
                                <td>
                                    <input type="text" name="p_price" id="p_price" placeholder="상품 가격을 입력" required>
                                </td>
                                <td class="s_tit">상품 URL</td>
                                <td>
                                    <input type="text" name="p_url" id="p_url"
                                        placeholder="예) https://www.amazon.com/~~~/">
                                </td>
                            </tr>
                            <tr>
                            </tr>
                            <tr>
                                <td class="s_tit">색상</td>
                                <td>
                                    <input type="text" name="p_color" id="p_color" placeholder="예) red 또는 빨강">
                                </td>
                                <td class="s_tit">사이즈</td>
                                <td>
                                    <input type="text" name="p_size" id="p_size" placeholder="예) 10">
                                </td>
                            </tr>
                            <tr>
                                <td class="s_tit">상품 이미지 등록</td>
                                <td colspan="3">
                                    <div class="imgPreview"></div>
                                    <input type="file" name="p_img" id="p_img"
                                        accept="image/jpeg, image/jpg, image/png, image/gif"
                                        onchange="setThumb(event)" />
                                </td>
                            </tr>
                        </table>
                            <!-- 수령 정보 입력 -->
                            <h4 class="salert_tit">수령 주소</h4>
                            <table class="shp_table">
                                <tr>
                                    <td class="s_tit">결제 방식</td>
                                    <td colspan="3">
                                        <input type="radio" name="p_pay" value="카드" id="p_card">
                                        <label for="p_card">카드결제</label>
                                        <input type="radio" name="p_pay" value="현금" id="p_cash">
                                        <label for="p_cash">현금결제</label>
                                    </td>
                                </tr>
                                <tr>
                                	<%@ include file="dbconn.jsp" %>
                                	<%
										PreparedStatement pstmt = null;
										ResultSet rs = null;
										
										String sql = "select * from PERSONAL_INFORMATION where id = ?";
										pstmt = conn.prepareStatement(sql);
										pstmt.setString(1, id);
										rs = pstmt.executeQuery();
										
										while (rs.next()) {
									%>
                                    <td class="s_tit">수령인</td>
                                    <td class="inner_t">
                                       <%=rs.getString("name")%>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="s_tit">연락처</td>
                                    <td class="inner_t">
                                        <%=rs.getString("phone")%>
                                     </td>
                                </tr>
                                <tr>
                                    <td class="s_tit">수령 주소</td>
                                    <td class="inner_t" colspan="3">
                                        <%=rs.getString("address")%>
                                     </td>
                                </tr>
                                <%
										}
								
								if (rs != null)
									rs.close();
								if (pstmt != null)
									pstmt.close();
								if (conn != null)
									conn.close();
								%>
                                <tr>
                                    <td class="s_tit" rowspan="2">개인통관보유부호</td>
                                    <td colspan="3">
                                        <p class="point_t">※개인통관고유부호는 관세청에서 주민등록번호 대신 발급하는 통관용 번호입니다.</p>
                                        <input type="checkbox" name="pass_chk1" id="pass_chk1">
                                        <label for="pass_chk1">개인통관고유부호 수집 및 통관 서류 작성에 사용함을 동의합니다.<br></label>
                                        <input type="checkbox" name="pass_chk2" id="pass_chk2">
                                        <label for="pass_chk2">개인통관고유부호는 반드시 수령인의 개인통관번호를 입력해주셔야합니다.<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;부정확한 입력으로 인해 배송지연이 발생하는 경우 당사는 책임이 없음을 동의합니다.</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="pass_num_setter">
                                        <span>P</span>
                                        <input type="text" name="pass_num" id="pass_num" placeholder="숫자만 입력하시오" />
                                        <a href="https://unipass.customs.go.kr/csp/persIndex.do" target="_blank">고유통관보유부호 발급 링크</a>
                                    </td>
                                </tr>
                            </table>
                            <q class="point_t">
                                ※ 이미지 파일 또는 이미지 URL 및 상품 상세 페이지 URL정보가 없을 경우 정확한 검수가 불가하며 이에 대한 오배송 발생 시 보상이 불가합니다.
                            </q>
                            <div class="btn_wrap">
                                <input type="submit" class="btn_custom" value="신청 완료" id="btnShp2">
                            </div>
                            </form> <!-- 신청내역 폼 닫음-->
            </article>

        </div>
        <!-- 이너 닫음 -->
    </section>
    <!-- 콘텐츠 섹션 닫음 -->
    
<!--  푸터 불러옴 -->
<%@ include file="../common_set/footer.jsp" %>
</body>
</html>