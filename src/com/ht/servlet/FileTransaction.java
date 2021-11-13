package com.ht.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@SuppressWarnings("serial")
public class FileTransaction extends HttpServlet {
	
	private static final String UPLOAD_DIRECTORY = "upload";
	
	private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
	private static final int MAX_FILE_SIZE      = 1024 * 1024 * 1024; // 1GB
	private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 1034;
	
	public FileTransaction(){
		super();
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		getServletContext().getRequestDispatcher("/Error1.jsp").forward(
                request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String login_name = request.getParameter("userName");
		String login_pwd = request.getParameter("userword");

		//For the form received is requested by HttpRequest POST, only doPost Method has to be Overided.
		if (!ServletFileUpload.isMultipartContent(request)) {
            
            PrintWriter writer = response.getWriter();
            writer.println("Error: The form must inlucde enctype=multipart/form-data");
            writer.flush();
            return;
        }
		
        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setSizeThreshold(MEMORY_THRESHOLD);
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setFileSizeMax(MAX_FILE_SIZE);
        upload.setSizeMax(MAX_REQUEST_SIZE);
        upload.setHeaderEncoding("UTF-8"); 
        String uploadPath = getServletContext().getRealPath("/") + File.separator + UPLOAD_DIRECTORY;
        File uploadDir = new File(uploadPath);
        
        if(uploadDir.exists()){
        	uploadDir.delete();
        }
        
        if (!uploadDir.exists()) 
            uploadDir.mkdir();
      
        try {
            List<FileItem> formItems = upload.parseRequest(request);
 
            if (formItems != null && formItems.size() > 0) {
                for (FileItem item : formItems) {
                    if (!item.isFormField()) {
                        //String fileName = new File(item.getName()).getName();//store name
                        String filePath = uploadPath + File.separator + "MyVideo.mp4";
                        File storeFile = new File(filePath);
                        System.out.println(filePath);
                        item.write(storeFile);
                        request.setAttribute("message",
                            "File Upload Success!");
                        request.setAttribute("login_name", login_name);
                			request.setAttribute("login_pwd", login_pwd);
                    }
                }
            }
        } catch (Exception ex) {
            request.setAttribute("message",
                    "Error Message: " + ex.getMessage());
        }
        
        getServletContext().getRequestDispatcher("/UploadSuccess.jsp").forward(
                request, response);
	}

}
