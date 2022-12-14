<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="border border-success p-3 d-flex">
				<%
					Map<String, Object> artistInfo = new HashMap<>();
				    artistInfo.put("name", "아이유");
				    artistInfo.put("debute", 2008);
				    artistInfo.put("agency", "EDAM엔터테인먼트");
				    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");
				%>
					<div class="mr-3">
						<img src="<%= artistInfo.get("photo") %>" width="150px" alt="사진">
					</div>
					<div class="">
							<h3 class="d-block"><%= artistInfo.get("name") %></h3>
							<span class="d-block"><%= artistInfo.get("agency") %></span>
							<span class="d-block"><%= artistInfo.get("debute") %> 데뷔</span>
					</div>
			</div>
			<div class="mt-3">
				<h4 class="">곡 목록</h4>
				<table class="table text-center">
					<thead>
						<tr>
							<th>no</th>
							<th>제목</th>
							<th>앨범</th>
						</tr>
					</thead>
					<tbody>
					<%
					// 아이유 노래 리스트 
					    List<Map<String, Object>> musicList = new ArrayList<>();
	
					    Map<String, Object> musicInfo = new HashMap<>();
					    musicInfo.put("id", 1);
					    musicInfo.put("title", "팔레트");
					    musicInfo.put("album", "Palette");
					    musicInfo.put("singer", "아이유");
					    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
					    musicInfo.put("time", 217);
					    musicInfo.put("composer", "아이유");
					    musicInfo.put("lyricist", "아이유");
					    musicList.add(musicInfo);
	
					    musicInfo = new HashMap<>();
					    musicInfo.put("id", 2);
					    musicInfo.put("title", "좋은날");
					    musicInfo.put("album", "Real");
					    musicInfo.put("singer", "아이유");
					    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
					    musicInfo.put("time", 233);
					    musicInfo.put("composer", "이민수");
					    musicInfo.put("lyricist", "김이나");
					    musicList.add(musicInfo);
	
					    musicInfo = new HashMap<>();
					    musicInfo.put("id", 3);
					    musicInfo.put("title", "밤편지");
					    musicInfo.put("album", "palette");
					    musicInfo.put("singer", "아이유");
					    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
					    musicInfo.put("time", 253);
					    musicInfo.put("composer", "제휘,김희원");
					    musicInfo.put("lyricist", "아이유");
					    musicList.add(musicInfo);
	
					    musicInfo = new HashMap<>();
					    musicInfo.put("id", 4);
					    musicInfo.put("title", "삐삐");
					    musicInfo.put("album", "삐삐");
					    musicInfo.put("singer", "아이유");
					    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
					    musicInfo.put("time", 194);
					    musicInfo.put("composer", "이종훈");
					    musicInfo.put("lyricist", "아이유");
					    musicList.add(musicInfo);
	
					    musicInfo = new HashMap<>();
					    musicInfo.put("id", 5);
					    musicInfo.put("title", "스물셋");
					    musicInfo.put("album", "CHAT-SHIRE");
					    musicInfo.put("singer", "아이유");
					    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
					    musicInfo.put("time", 194);
					    musicInfo.put("composer", "아이유,이종훈,이채규");
					    musicInfo.put("lyricist", "아이유");
					    musicList.add(musicInfo);
	
					    musicInfo = new HashMap<>();
					    musicInfo.put("id", 6);
					    musicInfo.put("title", "Blueming");
					    musicInfo.put("album", "Love poem");
					    musicInfo.put("singer", "아이유");
					    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
					    musicInfo.put("time", 217);
					    musicInfo.put("composer", "아이유,이종훈,이채규");
					    musicInfo.put("lyricist", "아이유");
					    musicList.add(musicInfo);
					    
					    for (Map<String, Object> item : musicList) {
					    	// 첫번째 방법: melon_1.jsp 생성 후 content까지 복붙, content의 bottom부턴 새로 꾸며서 만들기
					    	// 두번째 방법: toggle 이용해서 hide와 show를 해보기
					    	// 세번째 방법: jsp:include 사용해서 필요한 곳까지 가져온 후 나머지 작성
					    	// 조각 페이지 생각 X 곡목록 , 상세페이지가 따로 존재함 melon_detail.jsp 생성
					%>
						<tr>
							<td><%= item.get("id") %></td>
							<td><a href="/lesson03/quiz02/melon.jsp?id=<%=item.get("id") %>"><%= item.get("title") %></a></td>
							<td><%= item.get("album") %></td>
						</tr>
					<%
					    }
					%>
					</tbody>
				</table>
			</div>