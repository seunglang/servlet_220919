package com.test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/*")
public class CharacterEncodingFilter implements Filter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		// 필터를 통과할 때 인코딩 설정
		request.setCharacterEncoding("utf-8"); // request할때마다 utf-8 설정
		response.setCharacterEncoding("utf-8"); // 내보낼때도 utf-8 설정
		chain.doFilter(request, response);
	}

}
