package com.ht.servlet;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class Text_Replacement extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String text = request.getParameter("newtext1");
		text = new String(text.getBytes("ISO8859-1"), "UTF-8");
		String id = request.getParameter("id");
		String path = "/usr/local/myTomcat/apache-tomcat-8.5.65/webapps/MyLinuxServerForFileTransaction/upload/tmp.txt";
		File tmp = new File(path);
		if(tmp.exists())
			tmp.delete();
		try{
			tmp.createNewFile();
		}catch(IOException e){
			e.printStackTrace();
		}
		try{
			PrintWriter pw = new PrintWriter(new FileWriter(tmp));
			pw.print(id + "\n" + text);
			pw.flush();
			pw.close();
			System.out.println("Successfully tmp created!");
		}catch(IOException e){ 
			e.printStackTrace();
		}
		
		
		System.out.println("Successfully tmp created!");
		
		String []para1=new String[] {"/root/anaconda3/bin/python",
		"/usr/local/myTomcat/apache-tomcat-8.5.65/webapps/MyLinuxServerForFileTransaction/WEB-INF/classes/com/ht/servlet/change_srt.py"};
		PythonInvoke.pythoninvoke(para1);
		
		String []para2=new String[] {"/root/anaconda3/bin/python",
		"/usr/local/myTomcat/apache-tomcat-8.5.65/webapps/MyLinuxServerForFileTransaction/WEB-INF/classes/com/ht/servlet/Srt2JSON.py"};
		PythonInvoke.pythoninvoke(para2);
		
		tmp.delete();
		
		response.sendRedirect("/MyLinuxServerForFileTransaction/SubTitlePresentation.jsp");
	}

}
