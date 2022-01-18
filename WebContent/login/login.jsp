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
                <h2 class="sinfo_tit">로그인</h2>
                <form action="loginAction.jsp" class="login">
                    <div class="login_sec">
                        <div class="input_wrap">
                            <input type="text" name="id" id="id" required placeholder="아이디 입력">
                            <input type="password" name="password" id="password" required placeholder="비밀번호 입력">
                        </div>
                        <div class="btn_wrap">
                            <button type="submit" name="login_submit">로그인</button>
                        </div>
                    </div>
                    <hr>
                    <div class="login_nav">
                        <div class="signup_sec">
                            <a href="../account/sign_term.jsp" class="btn_signup">회원가입</a>
                        </div>
                        <div class="id_find_sec">
                            <a href="javascript:alert('준비중입니다')" class="btn_id_find">아이디 찾기</a>
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