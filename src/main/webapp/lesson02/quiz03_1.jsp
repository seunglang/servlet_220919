<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz03_1</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
		Integer height = Integer.valueOf(request.getParameter("height"));
		Integer weight = Integer.parseInt(request.getParameter("weight"));
		double bmi = weight / ((height / 100.0) * (height / 100.0));
		String result;
		if (bmi >= 31) {
			result = "비만";
		} else if (bmi >= 26 && bmi <= 30) {
			result = "과체중";
		} else if (bmi >= 21 && bmi <= 25) {
			result = "정상";
		} else {
			result = "저체중";
		}
	%>
	
	<div class="container">
		<div class="display-4">BMI 측정 결과</div>
		<div class="display-2">당신은 <%=result %> 입니다.</div>
		<div>BMI 수치: <%=bmi %></div>
	</div>
</body>	
</html>