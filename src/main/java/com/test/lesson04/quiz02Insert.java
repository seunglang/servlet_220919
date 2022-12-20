package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_insert")
public class quiz02Insert extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// content type 생략 - 다른 페이지로 보낼 예정(quiz02.jsp)
		
		// request parameter 꺼내기
		String name = request.getParameter("name");
		String url = request.getParameter("url"); // 수정 요망
		
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// // new_user에 insert 쿼리 수행
		String insertQuery = "insert into `website`"
				+ "(`name`, `url`)"
				+ "values"
				+ "('" + name + "' , '" + url + "');";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// DB 연결 해제
		ms.disconnect();
		
		// 사용자 목록 화면 이동
		response.sendRedirect("/lesson04/quiz02/quiz02_1.jsp");
	}

}
