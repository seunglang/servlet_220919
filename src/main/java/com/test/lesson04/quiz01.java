package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01")
public class quiz01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect(); // 꼭 넣자
		
		// DB insert 한 행
		String insertQuery = "insert into `real_estate`"
				+ "(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`)"
				+ "values"
				+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, null)";
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		// DB select & 결과 출력
		PrintWriter out = response.getWriter();
		String selectQuery = "select * from `real_estate`";
		try {
			ResultSet resultSet = ms.select(selectQuery);
			while (resultSet.next()) { // 결과행이 있는 동안 수행된다.
				if (resultSet.getInt("id") <= 10) {
					//out.print(resultSet.getInt("id"));
					out.print("매물 주소: ");
					out.print(resultSet.getString("address") + ", 면적: ");
					out.print(resultSet.getInt("area") + ", 타입: ");
					out.print(resultSet.getString("type"));
					out.println();
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 연결 해제
		ms.disconnect();
	}
}
