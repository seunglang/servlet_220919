<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<!-- post 하는 이유: 개인정보 보안 및 정보량 염두 -->
	<form method="post" action="/lesson04/ex02_insert">
		<p>
			<b>이름</b>
			<input type="text" name="name">
		</p>
		<p>
			<b>생년월일</b>
			<input type="text" name="yyyymmdd">
		</p>
		<p>
			<b>자기소개</b><br>
			<textarea rows="5" cols="50" name="introduce"></textarea>
		</p>
		<p>
			<b>email</b>
			<input type="text" name="email">
		</p>
		
		<p>
			<input type="submit" value="회원가입">
		</p>
	</form>
</body>
</html>