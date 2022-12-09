<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz04_1 - 계산기</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
		int firstP = Integer.parseInt(request.getParameter("firstP"));
		String operation = request.getParameter("operation");
		int secondP = Integer.parseInt(request.getParameter("secondP"));
		
		double sum = 0;
		if (operation.equals("+")) {
			sum = firstP + secondP;
		} else if (operation.equals("-")) {
			sum = firstP - secondP;
		} else if (operation.equals("X")) {
			sum = firstP * secondP;
		} else if (operation.equals("÷")) {
			sum = firstP / secondP;
		}
		
	%>
	<div class="container">
		<h1>계산 결과</h1>
		<div class="display-3"><%= firstP %> <%=operation %> <%=secondP %> = <span class="text-primary"><%= sum %></span></div>
		<div>
			<%
				out.print(firstP + " " + operation + " " + secondP);
			%>
				<span class="text-primary"><%= sum %></span>
		</div>
	</div>
</body>
</html>