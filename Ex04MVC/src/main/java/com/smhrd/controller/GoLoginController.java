package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GoLoginController
 */
@WebServlet("/goLogin")
public class GoLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// 1. 데이터 수집
		
		
		// 2. 기능 실행 (로직)
		
		
		// 3. view 선택
		String url = "WEB-INF/views/login.jsp"; // 페이지 url 은 따로 빼놓는게 좋음
		
		// 포워드 방식으로 가야함
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
		
		
		
		
		
		
		
		
		
	}

}
