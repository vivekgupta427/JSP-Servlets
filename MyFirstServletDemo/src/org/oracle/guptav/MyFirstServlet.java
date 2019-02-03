package org.oracle.guptav;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyFirstServlet extends HttpServlet {

	
private static final long serialVersionUID = 1L;
	

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String userName = request.getParameter("userName");
		out.println("Hello from Get method! "+userName);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String userName = request.getParameter("userName");
		String fullName = request.getParameter("fullName");
		String profession = request.getParameter("prof");
		out.println("Hello from the post method! "+userName+" and your full name is "+fullName+" and your profession is "+profession);
		out.println("\n");
		String[] location = request.getParameterValues("loc");
		out.println("You are from "+location.length+" locations and locations are ");
		for(String str : location){
			out.print(str+" ");
		}
		
	}
}
