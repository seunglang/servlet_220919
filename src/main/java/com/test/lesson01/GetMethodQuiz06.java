package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz06")
public class GetMethodQuiz06 extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		// request에서 request parameter를 꺼낸다
		Integer num1 = Integer.parseInt(request.getParameter("number1"));
		Integer num2 = Integer.parseInt(request.getParameter("number2"));
		
		// json으로 구성한다.
		PrintWriter out = response.getWriter();
		out.println(" {\"addition:\" " + (num1+num2) + ",\n\" \"subtraction\":\"" + (num1-num2) + "\n\", \"multiplication\":\"" + (num1*num2) + "\n\", \"division\":\"" + (num1 / num2) + "\"}   ");
		out.print("{\"addition\":" + (num1+num2)
				+ ", \"subtraction\":" + (num1-num2)
				+ ", \"multiplication\":" + (num1*num2)
				+ ", \"divistion\":" + (num1/num2) + "}");
	}
	
}
