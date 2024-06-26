package com.compkart.servlets;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.compkart.Dao.Productdao;
import com.compkart.conn.DBconnect;
import com.compkart.entities.Products;

/**
 * Servlet implementation class ProductServlet
 */
@MultipartConfig
@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String p_title = request.getParameter("p_title");
		String p_desc = request.getParameter("p_desc");
		String p_cat = request.getParameter("p_cat");
		double p_price = Double.parseDouble( request.getParameter("p_price"));
		Part part = request.getPart("p_img");
		
		Products product = new Products(p_title,p_desc,p_cat,p_price,part.getSubmittedFileName());
		
		Productdao pdao = new Productdao(DBconnect.getCon());
		
//		boolean b = true ;
		boolean b = pdao.addProducts(product);
		
		//finding the path of image
		String path = request.getRealPath("images")+File.separator+"products"+File.separator+part.getSubmittedFileName();
//		System.out.println(path);
		
		try {
		//uploading image
		FileOutputStream fos = new FileOutputStream(path);
		InputStream is = part.getInputStream();
		
		//reading data
		byte[] data = new byte[is.available()];
		is.read(data);
		
		//Writting data
		
		fos.write(data);
		
		fos.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		HttpSession session = request.getSession();
		
		if(b==true) {
//			System.out.println("product added ");
			
			session.setAttribute("psucc", product);
			
			session.setAttribute("message", "Product Added Successfully!");
			response.sendRedirect("admin.jsp");
		}
		else {
//			System.out.println("something went wrong");
			
			session.setAttribute("message", "Something Went Wrong!");
			response.sendRedirect("admin.jsp");
		}
		
		
	}

}
