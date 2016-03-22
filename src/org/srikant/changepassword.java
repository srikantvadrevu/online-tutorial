package org.srikant;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class changepassword
 */
@WebServlet("/changepassword")
public class changepassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String opwd,npwd1,npwd2;
		opwd=request.getParameter("opwd");
		npwd1=request.getParameter("npwd1");
		npwd2=request.getParameter("npwd2");
		HttpSession session = request.getSession();
		if(session.getAttribute("password").equals(opwd))
		{
		if(!(npwd1.equals(npwd2)))
		{
			session.setAttribute("pwdchange", "Passwords dosen't match!!");
		    
			response.sendRedirect("changepassword.jsp");
			return;
		}
		else
		{
			String s=(String) session.getAttribute("userid");
			System.out.println(s);
			changepwd c=new changepwd();
			boolean b= c.change(npwd1,s);
			
			if(b)
			{
				session.setAttribute("password", npwd1);
				response.sendRedirect("success.jsp");
			}
			
		}
		}
		else
		{
			session.setAttribute("wrong", "Passwords dosen't match!!");
		    
			response.sendRedirect("changepassword.jsp");
			return;
		}
	
	}
	}
