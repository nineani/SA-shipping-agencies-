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
    <section class="section">

        <div class="inner">

            <!-- 콘텐츠 영역 -->
            <article class="section_info w-100">
                <h2 class="sinfo_tit">회원가입</h2>

                <!-- 진행도 -->
                <div class="signup_process">
                    <div class="spr_box">
                        <span>STEP 01</span>
                        <p>약관동의</p>
                    </div>
                    <div class="spr_arrow">
                        >>
                    </div>
                    <div class="spr_box">
                        <span>STEP 02</span>
                        <p>회원정보입력</p>
                    </div>
                    <div class="spr_arrow">
                        >>
                    </div>
                    <div class="spr_box active">
                        <span>STEP 03</span>
                        <p>가입완료</p>
                    </div>
                </div>
                <!-- 진행도 닫음 -->

                <div class="login">
                    <h1 class="sinfo_tit">회원가입을 축하합니다.</h1>
                    <div class="btn_wrap">
                        <a href="../login/login.jsp" class="btn_custom">로그인 하러가기</a>
                    </div>
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