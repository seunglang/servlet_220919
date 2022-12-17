<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz02 - 웹사이트 목록 출력</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" !="anonymous"></script>
    
    <style>
    	#wrap {width:1200px; height:1200px; margin:auto}
    </style>
</head>
<body>
	<div id="wrap">
		<h1>즐겨찾기 추가</h1>
			<form method="get" action="/lesson04/quiz02_insert">
					<span>사이트명:</span><br>
					<input type="text" id="nme" class="form-control col-2" name="name">
					<div>사이트 주소:</div>
					<input type="text" class="form-control col-4" name="url">
				<button type="submit" id="button" class="btn btn-success mt-3">추가</button>
			</form>
	</div>
					<!-- <script>
						$(document).ready(function()) {
							// 버튼 클릭 시 내용이 비어있으면 alert
							var name = $('#nme').val().trim();
							$('#button').on('click', function() {
								if (name == "") {
									alert("내용이 비어있습니다.");
									return;
								}
							})
						}
					</script> -->
</body>
</html>