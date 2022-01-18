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

    <!-- 섹션 영역 -->
    <section class="visual">

    </section>
    <section class="section">
        <div class="inner join_section">

            <!-- 부메뉴 -->
            <nav class="inner_nav">
                <ul>
                    <li class="inner_nav_header">마이페이지</li>
                    <li><a href="../mypage/" class="inner_nav_link">배송대행 신청내역</a></li>
                    <li class="active"><a href="../mypage/center_info.jsp" class="inner_nav_link">배송대행 센터 안내</a></li>
                    <li><a href="../mypage/myaccount.jsp" class="inner_nav_link">내 회원정보</a></li>
                </ul>
            </nav> <!-- 부메뉴 닫음 -->

            <!-- 콘텐츠 영역 -->
            <article class="section_info">
                <h2 class="sinfo_tit">배송대행 센터 안내</h2>
                <div class="shp_table">
                    <div class="dflexWrap">
                        <div class="s_tit dflex active" id="btnCen1">
                            <i class="flag_img">
                                <img src="../img/country_us.png" alt="미국">
                            </i>
                            캘리포니아(CA)
                        </div>
                        <div class="s_tit dflex" id="btnCen2">
                            <i class="flag_img">
                                <img src="../img/country_us.png" alt="미국">
                            </i>
                            오레건(OR)
                        </div>
                        <div class="s_tit dflex" id="btnCen3">
                            <i class="flag_img">
                                <img src="../img/country_us.png" alt="미국">
                            </i>
                            뉴저지(NJ)
                        </div>
                        <div class="s_tit dflex" id="btnCen4">
                            <i class="flag_img">
                                <img src="../img/country_jp.png" alt="일본">
                            </i>
                            일본(TK)
                        </div>
                        <div class="s_tit dflex" id="btnCen5">
                            <i class="flag_img">
                                <img src="../img/country_cn.png" alt="중국">
                            </i>
                            중국(SH)
                        </div>
                        <div class="s_tit dflex" id="btnCen6">
                            <i class="flag_img">
                                <img src="../img/country_de.png" alt="독일">
                            </i>
                            독일(DE)
                        </div>
                        <div class="s_tit dflex" id="btnCen7">
                            <i class="flag_img">
                                <img src="../img/country_uk.png" alt="영국">
                            </i>
                            영국(UK)
                        </div>
                    </div> <!-- 줄 1 -->
                    <div class="center" id="center1">
                        <h2 class="center_tit">캘리포니아(CA)</h2>
                        <table>
                            <tr>
                                <td class="s_tit">주소</td>
                                <td>7050 VILLAGE DR</td>
                            </tr>
                            <tr>
                                <td class="s_tit">상세 주소</td>
                                <td>STE F, ATTN773572</td>
                            </tr>
                            <tr>
                                <td class="s_tit">도시명</td>
                                <td>BUENA PARK</td>
                            </tr>
                            <tr>
                                <td class="s_tit">주 이름</td>
                                <td>CA</td>
                            </tr>
                            <tr>
                                <td class="s_tit">우편번호</td>
                                <td>90621</td>
                            </tr>
                            <tr>
                                <td class="s_tit">연락처</td>
                                <td>714-736-9953</td>
                            </tr>
                        </table>
                    </div> <!-- 센터1 -->
                    <div class="center" id="center2">
                        <h2 class="center_tit">오레건(OR)</h2>
                        <table>
                            <tr>
                                <td class="s_tit">주소</td>
                                <td>5515 NE 148TH AVE</td>
                            </tr>
                            <tr>
                                <td class="s_tit">상세 주소</td>
                                <td>STE 302, ATTN773572</td>
                            </tr>
                            <tr>
                                <td class="s_tit">도시명</td>
                                <td>PORTLAND</td>
                            </tr>
                            <tr>
                                <td class="s_tit">주 이름</td>
                                <td>OR</td>
                            </tr>
                            <tr>
                                <td class="s_tit">우편번호</td>
                                <td>97251-9610</td>
                            </tr>
                            <tr>
                                <td class="s_tit">연락처</td>
                                <td>503-208-3427</td>
                            </tr>
                        </table>
                    </div> <!-- 센터1 -->
                    <div class="center" id="center3">
                        <h2 class="center_tit">뉴저지(NJ)</h2>
                        <table>
                            <tr>
                                <td class="s_tit">주소</td>
                                <td>86-110 ORCHARD ST.</td>
                            </tr>
                            <tr>
                                <td class="s_tit">상세 주소</td>
                                <td>UNIT 5, ATTN773572</td>
                            </tr>
                            <tr>
                                <td class="s_tit">도시명</td>
                                <td>HACKENSACK</td>
                            </tr>
                            <tr>
                                <td class="s_tit">주 이름</td>
                                <td>NJ</td>
                            </tr>
                            <tr>
                                <td class="s_tit">우편번호</td>
                                <td>07601-4833</td>
                            </tr>
                            <tr>
                                <td class="s_tit">연락처</td>
                                <td>201-313-7190</td>
                            </tr>
                        </table>
                    </div> <!-- 센터1 -->
                    <div class="center" id="center4">
                        <h2 class="center_tit">일본(JP)</h2>
                        <table>
                            <tr>
                                <td class="s_tit">주소</td>
                                <td>文京区小石川 2-24-7</td>
                            </tr>
                            <tr>
                                <td class="s_tit">상세 주소</td>
                                <td>名古屋ビル1F ATTN773572</td>
                            </tr>
                            <tr>
                                <td class="s_tit">도시명</td>
                                <td>東京市</td>
                            </tr>
                            <tr>
                                <td class="s_tit">도도부현</td>
                                <td>東京都</td>
                            </tr>
                            <tr>
                                <td class="s_tit">우편번호</td>
                                <td>112-0002</td>
                            </tr>
                            <tr>
                                <td class="s_tit">연락처</td>
                                <td>03-3830-0852</td>
                            </tr>
                        </table>
                    </div> <!-- 센터1 -->
                    <div class="center" id="center5">
                        <h2 class="center_tit">중국(SH)</h2>
                        <table>
                            <tr>
                                <td class="s_tit">주소</td>
                                <td>松江区九亭镇</td>
                            </tr>
                            <tr>
                                <td class="s_tit">상세 주소</td>
                                <td>盛龙路 755号 3号楼 208室</td>
                            </tr>
                            <tr>
                                <td class="s_tit">도시명</td>
                                <td>上海市</td>
                            </tr>
                            <tr>
                                <td class="s_tit">우편번호</td>
                                <td>201615</td>
                            </tr>
                            <tr>
                                <td class="s_tit">연락처</td>
                                <td>189-3089-1491</td>
                            </tr>
                        </table>
                    </div> <!-- 센터1 -->
                    <div class="center" id="center6">
                        <h2 class="center_tit">독일(DE)</h2>
                        <table>
                            <tr>
                                <td class="s_tit">주소</td>
                                <td>Philipp-Reis-str.3 ATTN773572</td>
                            </tr>
                            <tr>
                                <td class="s_tit">도시명</td>
                                <td>Bruchkoebel</td>
                            </tr>
                            <tr>
                                <td class="s_tit">주 이름</td>
                                <td>Hessen</td>
                            </tr>
                            <tr>
                                <td class="s_tit">우편번호</td>
                                <td>63486</td>
                            </tr>
                            <tr>
                                <td class="s_tit">연락처</td>
                                <td>06181-490-7360</td>
                            </tr>
                        </table>
                    </div> <!-- 센터1 -->
                    <div class="center" id="center7">
                        <h2 class="center_tit">영국(UK)</h2>
                        <table>
                            <tr>
                                <td class="s_tit">주소</td>
                                <td>776 BUCKINGHAM AVENUE, SLOUGH</td>
                            </tr>
                            <tr>
                                <td class="s_tit">상세 주소</td>
                                <td>ATTN773572</td>
                            </tr>
                            <tr>
                                <td class="s_tit">도시명</td>
                                <td>Slough</td>
                            </tr>
                            <tr>
                                <td class="s_tit">주 이름</td>
                                <td>Berkshire</td>
                            </tr>
                            <tr>
                                <td class="s_tit">우편번호</td>
                                <td>SL1 4NL</td>
                            </tr>
                            <tr>
                                <td class="s_tit">연락처</td>
                                <td>0175-361-0400</td>
                            </tr>
                        </table>
                    </div> <!-- 센터1 -->
                </div>
                <!-- 테이블 -->
            </article>
            <!-- 콘텐츠 영역 -->
        </div>

    </section>
    <!-- 섹션 닫음 -->
    
<!--  푸터 불러옴 -->
<%@ include file="../common_set/footer.jsp" %>
</body>
</html>