package com.compkart.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.compkart.Dao.Userdao;
import com.compkart.conn.DBconnect;
import com.compkart.entities.Users;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String password = request.getParameter("pwd");
		
		Userdao dao = new Userdao(DBconnect.getCon());
		
		Users user = dao.userlogin(email, password);
		
//		System.out.println(user);
		HttpSession session = request.getSession();
		
		if(user!=null) {
					//login session
			session.setAttribute("current_user", user);
			
			
			
			if(user.getUserEmail().equals("admin@compkart.in") && user.getUserPassword().equals("admin123")) {
				//for admin login
				response.sendRedirect("admin.jsp");
			}
			else {
				// for normal login
				response.sendRedirect("index.jsp");
			}
			
		}
		else {
			session.setAttribute("message", "Incorrect email or password ");
			response.sendRedirect("Login.jsp");
		}
	}

}
