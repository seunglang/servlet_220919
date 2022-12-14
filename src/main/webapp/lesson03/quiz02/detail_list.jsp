<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
			<h4 class="font-weight-bold">곡 정보</h4>
			<div class="border border-success p-3 d-flex">
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
				    
				    String keyword = request.getParameter("keyword");
				    boolean nullCheck1 = keyword != null;
				    String titles = request.getParameter("title");
				    boolean nullCheck2 = titles != null;
				    
				    for (Map<String, Object> item : musicList) {
				    	
					    //int id = Integer.parseInt(request.getParameter("id"));
				    	String title = (String)item.get("title");
				    		
				    	if ((title.equals(titles) && nullCheck2) || (title.equals(keyword) && nullCheck1)) {
				    		
				%>
					<div class="mr-4">
						<img src="<%= item.get("thumbnail") %>" width="200px" alt="사진">
					</div>
						<div>
							<div class="display-4"><%= title %></div>
							<div class="text-success font-weight-bold"><%= item.get("singer") %></div><br>
						<div class="d-flex">	
							<div class="mr-4">
								<small class="text-secondary">앨범</small><br>
								<small class="text-secondary">재생시간</small><br>
								<small class="text-secondary">작곡가</small><br>
								<small class="text-secondary">작사가</small>
							</div>
							<div>
								<small><%= item.get("album") %></small><br>
								<small><%= (int)item.get("time") / 60 %> : <%= (int)item.get("time") % 60 %></small><br>
								<small><%= item.get("composer") %></small><br>
								<small><%= item.get("lyricist") %></small>
							</div>
						</div>	
					</div>	
				<%
				    		}
						}
				%>
			</div>
			<div class="mt-5">
				<h4 class="font-weight-bold">가사</h4>
			</div>
			<hr>
			<div>
				<div class="font-weight-bold">가사 정보 없음</div>
			</div>