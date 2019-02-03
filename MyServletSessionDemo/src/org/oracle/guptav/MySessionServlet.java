package org.oracle.guptav;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MySessionServlet
 */
@WebServlet(description = "My Session Servlet", urlPatterns = { "/MySessionServletPath" },
			initParams={@WebInitParam(name="defaultUser", value="Vivek Gupta")}
)
public class MySessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MySessionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String userName = request.getParameter("userName");
		HttpSession session = request.getSession();
		ServletContext context = request.getServletContext();
		if(userName != null && !userName.isEmpty()){
			session.setAttribute("sessionName", userName);
			context.setAttribute("contextName", userName);
		}
		out.println("Hello this is coming from request !"+userName);
		out.println("Hello this is coming from session !"+(String) session.getAttribute("sessionName"));
		out.println("Hello this is coming from context !"+(String) context.getAttribute("contextName"));
		out.println("This is default user : " +this.getServletConfig().getInitParameter("defaultUser"));
		
	}

}
