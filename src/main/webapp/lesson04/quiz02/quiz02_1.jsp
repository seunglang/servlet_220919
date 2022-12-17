<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz02 - 테이블 출력</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" !="anonymous"></script>
    
    <style>
    	.link {color:red}
    	.item > .link:hover{text-decoration-line:none; color:blues}
    </style>
</head>
<body>
<%
	// DB 연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect(); // 진짜 연결
	
	// db select qeury
	String selectQuery = "select * from `website`";
	ResultSet rs = ms.select(selectQuery);
%>
	<div class="container">
		<table class="table">
			<thead>
				<tr>
					<th>번호</th>
					<th>사이트</th>
					<th>사이트 주소</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
			<%
				while(rs.next()) {
				
			%>
				<tr>
					<td><%= rs.getInt("id") %></td>
					<td><%= rs.getString("name") %></td>
					<td><%= rs.getString("url") %></td>
					<td><a href="/lesson04/quiz02_delete?id=<%= rs.getInt("id") %>">삭제</a></td>
				</tr>
			<%
				}
			%>
			</tbody>
		</table>
		
			<div class="d-flex align-items-center mt-4">
				<small class="item font-weight-bold mr-2"><a href="/lesson04/quiz02/quiz02.jsp" class="link">주소 추가 바로가기</a></small>
			</div>
	</div>
</body>
</html>