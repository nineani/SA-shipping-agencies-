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
                    <div class="spr_box active">
                        <span>STEP 02</span>
                        <p>회원정보입력</p>
                    </div>
                    <div class="spr_arrow">
                        >>
                    </div>
                    <div class="spr_box">
                        <span>STEP 03</span>
                        <p>가입완료</p>
                    </div>
                </div>
                <!-- 진행도 닫음 -->

                <h4 class="salert_tit">기본 회원 정보</h4>
                <form name="signup_form" action="../account/sign_Action.jsp" method="post">
                    <table class="salert_txt shp_table">
                        <tr>
                            <td class="s_tit">*아이디</td>
                            <td>
                                <input type="text" name="id" required>
                                <input type="button" name="double_check"
                                    value="아이디 중복 확인"> 영문, 숫자로 6~16자리까지 입력해주세요
                            </td>
                        </tr>
                        <tr>
                            <td class="s_tit">*이름</td>
                            <td><input type="text" name="name" required> 반드시 한글 이름으로 적어주세요</td>
                        </tr>
                        <tr>
                            <td class="s_tit">*이름(영문)</td>
                            <td><input type="text" name="ename" required> 반드시 영문 이름으로 적어주세요</td>
                        </tr>
                        <tr>
                            <td class="s_tit">*비밀번호</td>
                            <td><input type="password" name="password" required> 문자, 숫자로 6~12자리까지 입력해주세요</td>
                        </tr>
                        <tr>
                            <td class="s_tit">*비밀번호 확인</td>
                            <td><input type="password" name="repassword" required> 비밀번호를 다시 입력해주세요</td>
                        </tr>
                        <tr>
                            <td class="s_tit">*이메일 주소</td>
                            <td><input type="email" name="email" required>
                                정확한 이메일 주소를 입력해주세요
                            </td>
                        </tr>
                        <tr>
                            <td class="s_tit">*주소</td>
                            <td><input type="text" name="address" required>
                                정확한 주소를 입력해주세요</td>
                        </tr>
                        <tr>
                            <td class="s_tit">*연락처</td>
                            <td><input type="tel" name="phone" required> '-'없이 입력해주세요</td>
                        </tr>
                        <tr>
                            <td class="s_tit">*SMS 수신여부</td>
                            <td>이벤트와 쇼핑에 대한 정보를 SMS로 받아보시겠습니까?
                                <p />
                                <input type="radio" name="sms_check" value="yes" >예
                                <input type="radio" name="sms_check" value="no">아니요
                                (수신거부와 별도로 주요정책 메시지는 발송됩니다)
                                <p />
                                ※SMS수신 동의하시면 비정기적으로 진행되는 게릴라 쿠폰의 발급 대상이 되십니다.
                            </td>
                        </tr>
                        <tr>
                            <td class="s_tit">*이메일 수신여부</td>
                            <td>이벤트와 쇼핑에 대한 정보를 이메일로 받아보시겠습니까?
                                <p />
                                <input type="radio" name="email_check" value="yes" >예
                                <input type="radio" name="email_check" value="no">아니요
                                (수신거부와 별도로 주요정책 메시지는 발송됩니다)
                                <p />
                                ※이메일 수신 동의하시면 뉴스레터 발송시 회원님만 사용가능한 할인 쿠폰 소식을 받아보실 수 있습니다.
                            </td>
                        </tr>
                        <tr>
                            <td class="s_tit">*성별 및 생년월일</td>
                            <td>
                                <input type="radio" name="gender" value="남자" id="male" >
                                <label for="male">남자</label>
                                <input type="radio" name="gender" value="여자" id="female">
                                <label for="female">여자</label>
                                <input type="text" name="birth" id="birth">
                                <label for="birth"  required>생년월일 (주민번호 앞6자리)</label>
                            </td>
                        </tr>
                    </table>
                    <div class="btn_wrap both">
                        <input type="submit" class="btn_custom" value="완료">
                        <input type="button" class="btn_custom" value="취소" onclick="javascript:history.back()" >
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