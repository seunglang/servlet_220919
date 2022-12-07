package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz05")
public class GetMethodQuiz05 extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		// request 파라미터 꺼내기
		Integer number =Integer.valueOf(request.getParameter("number")); 
		
		out.print("<html><head><title>리스트 출력</title></head><body><ul>");
		for (int i = 1; i <= 9; i++) {
			out.println("<li>" + number + " X " + i + " = " + (number*i) + "</li>");
		}
		out.print("</ul></body></html>");
		

		
	}

}
