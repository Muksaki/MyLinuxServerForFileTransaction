package com.ht.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class AccountCheck extends HttpServlet {

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("utf-8");
		
		boolean flag = false;
		PrintWriter out = response.getWriter();
		
		Cookie[] cookies = request.getCookies();
		if(cookies != null){
			for(Cookie cookie : cookies){
				System.out.println(URLDecoder.decode(cookie.getName(), "utf-8"));
				if(URLDecoder.decode(cookie.getName(), "utf-8").equals("login_name")){
					flag = true;
				}
			}
		}
		if(flag == true){
			response.sendRedirect(request.getContextPath() + "/FileUpload.jsp");
			return;
		}
		
		String login_name = request.getParameter("userName");
		String login_pwd = request.getParameter("userword");
		if(login_name == "" || login_pwd == ""){
			out.println("<script>alert(\"Username or Password cannot be void!\");</script>");
			response.sendRedirect("../UserLogin.jsp");
			return;
		}
		
		String sql = "select * from sys_user where login_name = '" + login_name + "' and login_pwd = '" + login_pwd  + "';";
		PreparedStatement st = null;
		ResultSet rt = null;
		try{
			Connection conn = DBUtils.getConn();
			st = conn.prepareStatement(sql);
			rt = st.executeQuery();//Get the UUID of the records satisfying login_name and login_password
			if(!rt.next()){
				out.println("<script>alert(\"Username or Password is wrong! Please check your account and retry.\");</script>");
				response.sendRedirect("../UserLogin.jsp");
				return;
			}
			DBUtils.close(conn, st, null);
		}catch(SQLException e){
			e.printStackTrace();
		}
		Cookie cookie = new Cookie("login_name", login_name);
		cookie.setMaxAge(3600);
		response.addCookie(cookie);
		response.sendRedirect(request.getContextPath() + "/FileUpload.jsp");
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
}
