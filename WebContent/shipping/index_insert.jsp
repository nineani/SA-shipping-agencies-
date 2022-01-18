<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ include file="dbconn.jsp" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../common_set/header.jsp" %>
	<%
	
		
		
		request.setCharacterEncoding("UTF-8"); //한글인코딩
		
		//일련번호 숫자6자리 랜덤생성
		String p_randnum;
	
		Random rand = new Random();
		
		int number1 = (int)(Math.random()*9);
		int number2 = (int)(Math.random()*9);
		int number3 = (int)(Math.random()*9);
		int number4 = (int)(Math.random()*9);
		int number5 = (int)(Math.random()*9);
		int number6 = (int)(Math.random()*9);
		p_randnum = String.valueOf(number1)+String.valueOf(number2)+String.valueOf(number3)+
				String.valueOf(number4)+String.valueOf(number5)+String.valueOf(number6);
		
		String realFolder = "C:/Users/dnjsw/eclipse-workspace/Swing/sa/WebContent/img/"; //웹 어플리케이션상의 절대 경로
		String encType = "utf-8"; //인코딩 타입
		int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb

		//MultipartRequest를 이용한 파일 업로드
		MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
		
		//index.jsp의 폼데이터 받기
		String p_id = id;
		String p_name = multi.getParameter("p_name");
		String s_url = multi.getParameter("s_url");
		String p_category = multi.getParameter("p_category");
		String p_item = multi.getParameter("p_item");
		String p_brand = multi.getParameter("p_brand");
		String count = multi.getParameter("p_count");
		String price = multi.getParameter("p_price");
		String p_color = multi.getParameter("p_color");
		String p_size = multi.getParameter("p_size");
		String p_url = multi.getParameter("p_url");
		String p_pay = multi.getParameter("p_pay");
		String p_country = multi.getParameter("p_country");
		
		//수량과 가격에 입력이없을시 0원
		Integer p_count;
		if (count.isEmpty())
			p_count = 0;
		else
			p_count = Integer.valueOf(count);
		Integer p_price;
		if (price.isEmpty())
			p_price = 0;
		else
			p_price = Integer.valueOf(price);
		
		//일련번호
		int p_num = Integer.valueOf(p_randnum);
		
		Enumeration files = multi.getFileNames();//file 이름을 반환
		String fname = (String) files.nextElement();//파일명 중복제거
		String p_img = multi.getFilesystemName(fname);//저장파일이름
		
		PreparedStatement pstmt = null;
		
		//받아온 데이터를 DB에 저장
		String sql = "insert into APPLICATION_FORM values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,sysdate,?, ITEM_SEQ.NEXTVAL, '')";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, p_id);
		pstmt.setInt(2, p_num);
		pstmt.setString(3, p_name);
		pstmt.setString(4, s_url);
		pstmt.setString(5, p_img);
		pstmt.setString(6, p_category);
		pstmt.setString(7, p_item);
		pstmt.setString(8, p_brand);
		pstmt.setInt(9, p_count);
		pstmt.setInt(10, p_price);
		pstmt.setString(11, p_color);
		pstmt.setString(12, p_size);
		pstmt.setString(13, p_url);
		pstmt.setString(14, p_pay);
		pstmt.setString(15, p_country);
		pstmt.executeUpdate();
		
		
		//DB와의 연결종료
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
		
		//모든 프로그램 수행 후 페이지 이동
		response.sendRedirect("index.jsp");
	
	%>
</body>
</html>