<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz09 - Calendar</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<%-- 	<h1>오늘부터 1일</h1>
<%
	Calendar today = Calendar.getInstance();
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 M월 d일");
	
	int count = 100;
	for (int i = 0; i < 10; i++) {
		today.add(Calendar.DATE, count); // 100 + 200이됨
		out.print("<h1>" + (count) + "일: " + sdf.format(today.getTime()) + "</h1><br>");
	
%>
	
<%
		count += 100;
		count = count - 100;
	}
%> --%>
	
	
	<div class="container">
		<h1>오늘부터 1일</h1>
		<%
			Calendar today = Calendar.getInstance();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 M월 d일");
			today.add(Calendar.DATE, -1);
			for (int i = 100; i <= 1000; i+=100) {
				today.add(Calendar.DATE, 100);
			
		%>
		<div class="display-4">
			<span><%= i %>일:</span>
			<span class="text-danger"><%= sdf.format(today.getTime()) %></span>
		</div>
		<%
			}
		%>
	</div>
</body>
</html>