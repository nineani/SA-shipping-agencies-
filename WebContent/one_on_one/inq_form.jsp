<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shipping Agencies</title>
</head>
<body>
<%@ include file="../common_set/header.jsp" %>

	<section class="visual">
	</section>
	
	<section class="section">
		<div class="inner join_section">
			<nav class="inner_nav">
                <ul>
                    <li class="inner_nav_header">고객센터</li>
                    <li><a href="../customer/" class="inner_nav_link">공지사항</a></li>
                    <li><a href="../customer/faq.jsp" class="inner_nav_link">FAQ (자주 묻는 질문)</a></li>
                    <li class="active"><a href="./inquiries.jsp" class="inner_nav_link">1:1문의</a></li>
                </ul>
            </nav>
            <article class="section_info">
            	<h2 class="sinfo_tit">문의작성</h2>
            	
            	<form action="./add_inq_form.jsp" name="addform" method="post" enctype="multipart/form-data" onsubmit="return checkInq();">
            		<div>
	            		<p class="q_cat">질문유형 (필수)
		            		<select name="qcategory" id="category_sel">
		            			<option value="배송신청">배송신청</option>
		            			<option value="결제">결제</option>
		            			<option value="파손">파손</option>
		            			<option value="서비스">서비스</option>
		            			<option value="기타">기타</option>
		            		</select>
	            		</p>
            		</div>
            		<table class="inq_table">
            			<tr>
            				<td class="i_tit">* 배송대행지</td>
            				<td>
            					<input type="radio" name="qcenter" value="캘리포니아(CA)" id="ca">
            					<label for="ca">캘리포니아(CA)</label>
            					<input type="radio" name="qcenter" value="오레건(OR)" id="or">
            					<label for="or">오레건(OR)</label>
            					<input type="radio" name="qcenter" value="뉴저지(NJ)" id="nj">
            					<label for="nj">뉴저지(NJ)</label>
            					<input type="radio" name="qcenter" value="일본(JP)" id="jp">
            					<label for="jp">일본(JP)</label>
            					<input type="radio" name="qcenter" value="중국(SH)" id="sh">
            					<label for="sh">중국(SH)</label>
            					<input type="radio" name="qcenter" value="독일(DE)" id="de">
            					<label for="de">독일(DE)</label>
            					<input type="radio" name="qcenter" value="영국(UK)" id="uk">
            					<label for="uk">영국(UK)</label>
            				</td>
            			</tr>
            			<tr>
            				<td class="i_tit">* 제목</td>
            				<td><input type="text" name="qtitle" id="qtitle" placeholder="제목을 입력해주세요."></td>
            			</tr>
            			<tr>
            				<td class="i_tit">* 내용</td>
            				<td><textarea name="qcontent" cols="100" rows="20" placeholder="내용을 입력해주세요." style="resize:none;"></textarea></td>
            			</tr>
            			<tr>
            				<td class="i_tit"> 파일첨부</td>
            				<td><input type="file" name="qfile" id="qfile"></td>
            			</tr>
            		</table>
            		<div class="btn_sub">
            			<input type="submit" name="btn_submit" value="등록" id="qsubmit">
            		</div>
            	</form>
            </article>
		</div>
	</section>
<%@ include file="../common_set/footer.jsp" %>
</body>
</html>