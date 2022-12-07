package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		// request로 parameter 가져오기
		PrintWriter out = response.getWriter();
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		String keyword = request.getParameter("keyword");
		
		out.print("<html><title>맛집 찾기</title><head></head><body>");
		
		Iterator<String> iter = list.iterator();
		while(iter.hasNext()) {
			String line =  (String) iter.next();
//			if (word.contains(search)) {
//				// search 단어를 bold 처리 할 수 있는 방법 생각
//				out.print(word + "<br>");
//			}
			
			// 풀이 1) 단어 자체로 split
			if (line.contains(keyword)) {
				String[] word = line.split(keyword);
//				out.print(word[0] + " " + word[1]);
//				out.print(word[0] + "<b>" + keyword + "</b>" + word[1] + "<br>");
			}
			
			// 풀이 2) 
			if (line.contains(keyword)) {
				line = line.replace(keyword, "<b>" + keyword + "</b>");
				out.print(line + "<br>");
			}
		}
		
		out.print("</body></html>");
	}

}
