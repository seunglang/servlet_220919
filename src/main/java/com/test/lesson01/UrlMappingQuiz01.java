package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingQuiz01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException  {
		response.setCharacterEncoding("utf-8"); //대소문자 구분안해도됨. 다 괜찮음
		response.setContentType("text/plain"); 
		
		PrintWriter out = response.getWriter();
		out.println("안녕하세요");
		
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("오늘 날짜는 yyyy년 M월 dd일");
		out.println(sdf.format(now));
	}
}
