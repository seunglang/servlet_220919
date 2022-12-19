package com.test.lesson04;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz03_insert")
public class quiz03Insert extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// content type 생략 (used_goods로 보낼 예정)
		
		// request로 parameter 가져오기
		int id = Integer.valueOf(request.getParameter("nickName"));
		String title = request.getParameter("title");
		int price = Integer.parseInt(request.getParameter("price"));
		String intro = request.getParameter("intro");
		String url = request.getParameter("url");
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect(); // 연결 시작
		
		
		// used_goods와 seller에 insert 쿼리 수행
		
		String insertQuery = "insert into `used_goods`"
				+ "(`sellerId`, `title` , `description`, `price` , `pictureUrl`)"
				+ "values"
				+ "('" + id + "', '" + title + "', '" + intro + "', '" + price + "', '" + url + "');";
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// DB 연결 해제
		ms.disconnect();
		
		// 사용자 목록 화면 이동
		response.sendRedirect("/lesson04/quiz03/used_goods.jsp");
	}

}
