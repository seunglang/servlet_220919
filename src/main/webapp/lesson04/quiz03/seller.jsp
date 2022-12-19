<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HONG당무 마켓</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" !="anonymous"></script>
    
    <style>
    	#wrap {width:1200px; margin:auto;}
    	header {height:120px; background-color:#F8823E;}
    	.logo {color:#fff;}
    	.logo:hover {color:brown; text-decoration:none}
    	#menu {height:60px; background-color:#F8823E;}
    	.nav-item > .nav-link:hover {color:brown}
    	.text-size {color:#fff; font-weight:bold; font-size:18px}
    	.contents {height:450px}
    	.top {height:30%; margin:auto;}
    	.bottom {height:70%; margin:auto;}
    	.btn-color {background-color:#E3DFDF;}
    	footer {height:100px}
    </style>
</head>
<body>
<%
	// DB 연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	// db select query
	String selectQuery = "select * from `seller`";
	ResultSet rs = ms.select(selectQuery);
%>
	<div id="wrap">
		<jsp:include page="/lesson04/quiz03/header.jsp" />
		<jsp:include page="/lesson04/quiz03/nav.jsp" />
		<section class="contents">
			<article class="top d-flex align-items-center col-10">
				<div class="display-4">물건 올리기</div>
			</article>
			<article class="bottom col-10">
				<form method="post" action="/lesson04/quiz03_insert">
					<div class="d-flex">
						<div class="d-flex justify-content-between col-9">
							<select class="form-control col-4" name="nickName">
								<option selected>✓-아이디 선택-</option>
							<%
								while(rs.next()) {
							%>
								<option value="<%= rs.getInt("id") %>"><%= rs.getString("nickname") %></option>
							<%
								}
							%>
							</select>
							<input type="text" class="form-control col-7 mr-3" name="title" placeholder="제목">
						</div>
						
						<div class="input-group col-3 d-flex justify-content-end">
						    <input type="text" class="form-control col-10" name="price" placeholder="가격">
						    <div class="input-group-append">
						      	<span class="input-group-text">원</span>
						    </div>
						</div>
					</div>
					
					<div class="mt-3">
						<textarea rows="5" cols="15" name="intro" class="form-control"></textarea>
					</div>
					<div class="mt-3">
						 <div class="input-group">
						    <div class="input-group-prepend">
						      	<span class="input-group-text">이미지 url</span>
						    </div>
						    <input type="text" class="form-control" name="url">
						 </div>
					</div>
					<input type="submit" class="btn btn-color form-control mt-3" value="저장">
				</form>
			</article>
		</section>
		<jsp:include page="/lesson04/quiz03/footer.jsp" />
	</div>
</body>
</html>