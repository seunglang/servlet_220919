<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배탈의 민족</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1 class="text-center">검색 결과</h1>
		<table class="table text-center">
			<thead>
				<tr>
					<th>메뉴</th>
					<th>상호</th>
					<th>별점</th>
				</tr>
			</thead>
			<tbody>
			
			<%
			List<Map<String, Object>> list = new ArrayList<>();
		    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
		    list.add(map);
		    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
		    list.add(map);
		    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
		    list.add(map);
		    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
		    list.add(map);
		    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
		    list.add(map);
		    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
		    list.add(map);
		    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
		    list.add(map);
		    
		    // request로 parameter 가져오기
		    String keyword = request.getParameter("keyword");
			String check = request.getParameter("check");
			// 체크 했으면: checkPoint, 체크 안되어있으면 null
			// 선생님 코드 보고 비교분석 해보자
			// boolean exclude = check != null;
		    
			// 선생님 코드 - 매우 간결함
			/* for (Map<String, Object> item : list) {
				String menu = (String)item.get("menu");
				if (menu.contains(keyword)) {
					if (exclude && (double)item.get("point") <= 4) {
						continue;
					}				
				}
			} */
			
		    Iterator<Map<String, Object>> iter = list.iterator();
		    while(iter.hasNext()) {
		    	Map<String, Object> brand = iter.next();
		    	String menu = (String)brand.get("menu");
		    	if (menu.equals(keyword)) {
		    		if (check == null) {
			%>
				<!-- checkbox가 체크되지 않았을 경우의 출력값 생각
					 
				 -->
				<tr>
					<td><%= brand.get("menu") %></td>
					<td><%= brand.get("name") %></td>
					<td><%= brand.get("point") %></td>
				</tr>

			
			<%
		    		} else if (check.equals("pointCheck")) {
		    			if ((Double)(brand).get("point") >= 4.0) {
			%>
				<tr>
					<td><%= brand.get("menu") %></td>
					<td><%= brand.get("name") %></td>
					<td><%= brand.get("point") %></td>
				</tr>
				
			<% 
		    			} 
		    		}
		    	}
			}
			%>
			</tbody>
		</table>
	</div>
</body>
</html>