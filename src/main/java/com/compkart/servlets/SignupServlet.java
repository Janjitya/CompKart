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
 * Servlet implementation class SignupServlet
 */
@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("u_name");
		String email = request.getParameter("u_email");
		String password = request.getParameter("u_password");
		
		Users user = new Users(name,email,password);
		
		Userdao dao = new Userdao(DBconnect.getCon());
		
		boolean f = dao.userRegister(user);
		HttpSession session = request.getSession();
		
		if(f == true) {
//			System.out.println("user signup successfull");
			session.setAttribute("success", user);
			response.sendRedirect("Login.jsp");
		}
		else {
//			System.out.println("something went wrong");
			session.setAttribute("message", "User already exists");
			response.sendRedirect("Signup.jsp");
		}
	}

}
