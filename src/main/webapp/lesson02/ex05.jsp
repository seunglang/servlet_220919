<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex05 - Calendar</title>
</head>
<body>
<%
	Calendar today = Calendar.getInstance(); // singleton이 아니다
	out.println(today);
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
	out.println(sdf.format(today.getTime()) + "<br>"); // Calendar => Date 변환 후 format 적용
	
	// 어제 날짜
	SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy년 MM월 dd일");
	Calendar yesterday = Calendar.getInstance();
	yesterday.add(Calendar.DATE, -1); // -1 하루전
	//yesterday.add(Calendar.MONTH, -1); // 한달전
	//yesterday.add(Calendar.YEAR, -1); // 일년전
	
	out.println("어제 날짜 : " + sdf2.format(yesterday.getTime()) + "<br>");
	
	// 두 날짜 비교
	// compareTo ex) 2022 2021
	// 1 0 -1
	// 기준값(앞 대상) 크면 1
	// 같으면 0
	// 작으면 -1
	
	int result = today.compareTo(yesterday);
	if (result > 0) {
		out.print("today가 더 크다");
	} else if (result == 0) {
		out.print("두 날짜는 같다");
	} else {
		out.print("today가 작다");
	}
%>
</body>
</html>