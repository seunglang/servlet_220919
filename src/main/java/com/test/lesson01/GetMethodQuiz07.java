package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz07")
public class GetMethodQuiz07 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		// request parameter 가져오기
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		int price = Integer.valueOf(request.getParameter("price"));
		
		out.print("<html><head><title>주문 결과</title></head><body>");
		
		// 조건식에 들어갈 경우 밑 구문 출력x
		
		if (address.contains("서울시") != true) {
			out.print("배달 불가 지역입니다.");
		} else if (card.equals("신한카드")) {
			out.print("결제 불가 카드입니다.");
		} else {
			out.print(address + " <b>배달준비중</b><br>");
			out.print("결제금액: " + price + "원");
		} 
		
//		if (card.equals("신한카드")) {
//			out.print("결제 불가 카드입니다.");
//		} else {
//			out.print("결제금액: " + price);
//		}
		
		out.print("</body></html>");
	}

}
