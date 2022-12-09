<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz05_1 - 길이 변환</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
		int length = Integer.parseInt(request.getParameter("length"));
		String[] unit = request.getParameterValues("unit"); // checkbox, 여러 값 getParameterValues()
		
		
		
	%>
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h3><%=length %>cm</h3>
		<hr>
		
		<h2>
			<%
				if (unit != null) {	
					
				for (String ut : unit) { // inch
					if (ut.equals("inch")) {
						double inch = length * 0.393701;
						out.print(inch + "in<br>");
					} else if (ut.equals("yard")) {
						double yard = length * 0.0109361;
						out.print(yard + "yard<br>");
					} else if (ut.equals("ft")) {
						double ft = length / 0.0328084;
						out.print(ft + "ft<br>");
					} else if (ut.equals("m")) {
						double m = length / 100.0;
						out.print(m + "m");
					}
				}		
				
				}
			%>
		</h2>
	</div>
</body>
</html>