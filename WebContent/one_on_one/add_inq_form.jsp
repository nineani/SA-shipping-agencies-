<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ include file="dbconn.jsp" %>
<%@ page import="java.util.*" %>

<%
	request.setCharacterEncoding("UTF-8");

	String dirPath = application.getRealPath(".//qfile/");
	
	String filename = "";
	String realFolder = dirPath;
	String encType = "utf-8";
	int maxSize = 100 * 1024 * 1024;
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	
	String qnum = multi.getParameter("qnum");
	String qcategory = multi.getParameter("qcategory");
	String qcenter = multi.getParameter("qcenter");
	String qtitle = multi.getParameter("qtitle");
	String qcontent = multi.getParameter("qcontent");
	String qdate = multi.getParameter("qdate");
	
/* 	if(qcategory.isEmpty()||qcategory=="")
		qcategory = null;
	else
		qcategory = String.valueOf(qcategory); */
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	PreparedStatement pstmt;
	
	String sql = "insert into inq_user values(SEQ_INQNUM.NEXTVAL, ?, ?, ?, ?, ?, sysdate, ?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, qcategory);
	pstmt.setString(2, qcenter);
	pstmt.setString(3, qtitle);
	pstmt.setString(4, qcontent);
	pstmt.setString(5, fileName);
	pstmt.setString(6, "lim1234");	//임시 아이디 부여
	pstmt.executeUpdate();

	if(pstmt != null)
		pstmt.close();
	if(conn != null)
		conn.close();
	
	response.sendRedirect("inquiries.jsp");
%>