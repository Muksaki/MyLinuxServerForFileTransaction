package com.ht.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class VideoProcessing extends HttpServlet {
	//Maybe it's necessary to load user's account here.
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		   throws ServletException, IOException {
		doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String []para1=new String[] {"/root/anaconda3/bin/python",
		"/usr/local/myTomcat/apache-tomcat-8.5.65/webapps/MyLinuxServerForFileTransaction/WEB-INF/classes/com/ht/servlet/autosub_API.py"};
		PythonInvoke.pythoninvoke(para1);
		
		String []para2 = new String[] {"/root/anaconda3/bin/python",
		"/usr/local/myTomcat/apache-tomcat-8.5.65/webapps/MyLinuxServerForFileTransaction/WEB-INF/classes/com/ht/servlet/Srt2JSON.py"};
		PythonInvoke.pythoninvoke(para2);
		
		getServletContext().getRequestDispatcher("/SubTitlePresentation.jsp").forward(request, response);
	}

}
