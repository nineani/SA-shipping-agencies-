<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shipping Agencies</title>
    <!-- 리셋 CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.css">
    <!-- 아이콘 -->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
    <!-- 커스텀 CSS -->
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/section.css">
</head>
<body>
		<%
		String id = null;
		if (session.getAttribute("id") != null) {
			id = (String) session.getAttribute("id");
		}
		%>
    <!-- 헤더 영역 -->
    <header class="upper_header">
        <div class="inner">
            <h1 class="logo"></h1>
            <!-- 로고 -->
            <nav class="side_nav">
            <%
				if(id == null) {			
			%>
                <ul>
                    <li class="side_nav_li"><a href="../login/login.jsp" class="side_nav_link">로그인</a></li>
                    <li class="side_nav_li"><a href="../account/sign_term.jsp" class="side_nav_link">회원가입</a></li>
                    <li class="side_nav_li"><a href="../mypage/" class="side_nav_link">마이페이지</a></li>
                </ul>
            <%
				} else {	
			%>
			<ul>
                    <li class="side_nav_li"><a href="../login/logoutAction.jsp" class="side_nav_link">로그아웃</a></li>
                    <li class="side_nav_li"><a href="../mypage/" class="side_nav_link">마이페이지</a></li>
                </ul>
			<%
				}
			%>
            </nav> <!-- 사이드 닫음 -->
        </div> <!-- 이너 닫음 -->
    </header> <!-- 상단 헤더 닫음 -->
    
    <!-- 섹션 영역 -->
    <section class="video">
        <video muted autoplay loop>
            <source src="../img/index_vdo.mp4" type="video/mp4" />
        </video>
        <div class="video_cover"></div>
        <div class="video_section">
            <p class="video_tit">최적의 배송대행 서비스 ─ SA:Shipping Agencies</p>
            <div class="btnList">
           		<%
				if(id == null) {			
				%>
           	    <a href="../shipping/" class="home_btn">배송대행 신청</a>
                <a href="../manual/" class="home_btn">이용안내</a>
                <a href="../login/login.jsp" class="home_btn">로그인</a>
                <%
				} else {	
				%>
				<a href="../shipping/" class="home_btn">배송대행 신청</a>
                <a href="../manual/" class="home_btn">이용안내</a>
				<%
				}
				%>
            </div>
        </div>
    </section>
    <!-- 섹션 닫음 -->
    
<!--  푸터 불러옴 -->
<%@ include file="../common_set/footer.jsp" %>
</body>
</html>