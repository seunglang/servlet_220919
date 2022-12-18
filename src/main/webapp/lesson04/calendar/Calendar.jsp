<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캘린더 만들기</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

	<%

		Calendar tDay = Calendar.getInstance();
		int y = tDay.get(Calendar.YEAR);
		int m = tDay.get(Calendar.MONTH);
		int d = tDay.get(Calendar.DATE);
		Calendar dSet = Calendar.getInstance();

		dSet.set(y, m, 1);

		int yo = dSet.get(Calendar.DAY_OF_WEEK);

		int last_day = tDay.getActualMaximum(Calendar.DATE);

	%>
	<div class="container">
		<h1 class="text-center"><%=y%>년<%=(m+1)%>월 달력</h1>
		<table class="table text-center mt-3">
			<thead>
				<tr>
					<%
		
						String[] a = { "일", "월", "화", "수", "목", "금", "토" };
		
						for (int i = 0; i < 7; i++) {%>
		
						<td><%=a[i]%></td>
		
						<%
							}
						%>
				</tr>
			</thead>
			<tbody>
				<tr>
					<%
						for (int k = 1; k < yo; k++) {
					%>
						<td></td>
					<%
						}
					%>
		
					<%
						for (int j = 1; j <= last_day; j++) {
					%>
		
						<td><%=j%>
						
						<%
							if ((yo+j-1) % 7 == 0) {
						%>
						
						</td>
						
						</tr>
						
						<tr>
		
					<%
						}
					}
					for(int e=1;e<(7-yo);e++){
						
					%>
		
					<td></td>
		
					<%
						}
					%>
		
				</tr>
			</tbody>
		</table>
	</div>
</body>

</html>