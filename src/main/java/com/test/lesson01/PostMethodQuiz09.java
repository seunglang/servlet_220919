package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz09")
public class PostMethodQuiz09 extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		// request로 parameter 가져오기
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String intro = request.getParameter("intro");
		
		out.print("<html><head><title>자기 소개서</title></head><body>");
		out.print("<b>" + name + "</b>" + "님 지원이 완료되었습니다.");
		out.print("<h3>지원 내용</h3>");
		out.print(intro);
		out.print("</body></html>");
	}

}
