package org.srikant;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.srikant.service.loginservice;

/**
 * Servlet implementation class loginservlet
 */
@WebServlet("/login")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userid, password;
		userid = request.getParameter("userid");
		password = request.getParameter("pwd");
		HttpSession session = request.getSession();
		loginservice l = new loginservice();
		boolean a = l.authenticate(userid, password);
		if (a) {

			session.setAttribute("userid", userid);
			session.setAttribute("password", password);

			response.sendRedirect("success.jsp");
			return;
		} else {

			session.setAttribute("error", "Username or Password is incorrect");
			// redirect to index.jsp
			response.sendRedirect("login.jsp");
			return;
		}
	}

}
