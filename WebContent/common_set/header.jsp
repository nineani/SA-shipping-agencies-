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
    <link rel="stylesheet" href="../css/event.css">
    <link rel="stylesheet" href="../css/board.css">
    <link rel="stylesheet" href="../css/shp.css">
    <link rel="stylesheet" href="../css/login.css">
    <!-- 커스텀 JS -->
    <script defer src="../js/imgPreview.js"></script>
    <script defer src="../js/option.js"></script>
    <script defer src="../js/check_shp.js"></script>
    <script defer src="../js/check_signTerm.js"></script>
     <script defer src="../js/tab_center.js"></script>
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
    <header class="lower_header">
        <div class="inner">
            <nav class="main_nav">
                <ul>
                    <li class="main_nav_li"><a href="../home/" class="main_nav_link">HOME</a></li>
                    <li class="main_nav_li"><a href="../shipping/" class="main_nav_link">배송대행 신청</a></li>
                    <li class="main_nav_li"><a href="../manual/" class="main_nav_link">이용안내</a></li>
                    <li class="main_nav_li"><a href="../event/" class="main_nav_link">이벤트</a></li>
                    <li class="main_nav_li"><a href="../customer/" class="main_nav_link">고객센터</a></li>
                </ul>
            </nav> <!-- 메인 닫음 -->
        </div> <!-- 이너 닫음 -->
    </header> <!-- 하단 헤더 닫음 -->
</body>
</html>