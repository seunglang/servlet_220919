package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		// request parameter 꺼내기
		String userId = request.getParameter("user_id"); // user_id라는 키에 해당하는 결과를 얻을 수 있음
		String name = request.getParameter("name");
		Integer age =Integer.valueOf(request.getParameter("age"));
		
		PrintWriter out = response.getWriter();
//		out.println("user_id:" + userId);
//		out.println("name:" + name);
//		out.println("age:" + age);
		// JSON(Javascript object Notation) 객체의 모양을 본떠서 만든 String이라 생각하자
		// String으로 response 구성하기
		// {"user_id":"marobiana", "name":"승원", "age":25}
		out.print("  {\"user_id\":\""  + userId + "\", \"name\":\"" + name + "\", \"age\":" + age + "\"}");
	}
}
