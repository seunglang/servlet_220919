package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex05")
public class PostMethodEx05 extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest requset, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지
//		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		//request parameter 꺼내기
		String userId = requset.getParameter("userId");
		String name = requset.getParameter("name");
		String birth = requset.getParameter("birth");
		String email = requset.getParameter("email");
		
		// 테이블로 출력
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>회원정보</title></head><body>");
		out.print("<table border=1>");
		out.print("<tr><th>아이디</th><td>" + userId + "</td></tr>");
		out.print("<tr><th>이름</th><td>" + name + "</td></tr>");
		out.print("<tr><th>생년월일</th><td>" + birth + "</td></tr>");
		out.print("<tr><th>이메일</th><td>" + email + "</td></tr>");
		out.print("</table></body></html>");
	}

}
