package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingQuiz02 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8"); //대소문자 구분안해도됨. 다 괜찮음
		response.setContentType("text/plain"); 
		
		PrintWriter out = response.getWriter();
		
		// 날짜 생성
		Date now = new Date();
		
		//formatter
		SimpleDateFormat sdf = new SimpleDateFormat("k시 mm분 ss초");
		out.println("현재 시간은 "+ sdf.format(now) + " 입니다.");
		
		SimpleDateFormat sdf2 = new SimpleDateFormat("현재 시간은 a H시 s초 SS밀리세컨입니다. Y년 w주째 E요일");
		out.println(sdf2.format(now));
	}
	
	
}
