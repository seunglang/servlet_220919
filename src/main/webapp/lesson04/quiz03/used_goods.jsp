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
    	#wrap {width:1200px; margin:auto}
    	header {height:120px; background-color:#F8823E;}
    	.logo {color:#fff;}
    	.logo:hover {color:brown; text-decoration:none}
    	#menu {height:60px; background-color:#F8823E;}
    	.nav-item > .nav-link:hover {color:brown}
    	.text-size {color:#fff; font-weight:bold; font-size:18px}
    	.contents {height:450px;}
    	.border-color {border-color:#F8823E; width:380px}
    	#side {border-color:red;}
    	footer {height:100px}
    </style>
</head>
<body>
	<div id="wrap" class="bg-secondary">
		<jsp:include page="/lesson04/quiz03/header.jsp" />
		<jsp:include page="/lesson04/quiz03/nav.jsp" />
		<section class=" contents bg-success">
			<div class="d-flex justify-content-between pt-3">
				<div class="border border-color" id="side">
					<div>일단 테스트</div>
					<div>테스트1</div>
					<div>테스트2</div>
				</div>
				<div class="border border-primary">
					<div>일단 테스트</div>
					<div>테스트1</div>
					<div>테스트2</div>
				</div>
				<div class="border border-color">
					<div>일단 테스트</div>
					<div>테스트1</div>
					<div>테스트2</div>
				</div>
			</div>
			<div class="d-flex justify-content-between pt-3">
				<div class="border border-color">
					<div>일단 테스트</div>
					<div>테스트1</div>
					<div>테스트2</div>
				</div>
				<div class="border border-color">
					<div>일단 테스트</div>
					<div>테스트1</div>
					<div>테스트2</div>
				</div>
				<div class="border border-color">
					<div>일단 테스트</div>
					<div>테스트1</div>
					<div>테스트2</div>
				</div>
			</div>
		</section>
		<jsp:include page="/lesson04/quiz03/footer.jsp" />
	</div>
</body>
</html>