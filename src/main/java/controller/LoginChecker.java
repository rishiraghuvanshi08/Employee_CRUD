package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Employee;
import service.EmployeeService;

/**
 * Servlet implementation class LoginChecker
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/LoginChecker" })
public class LoginChecker extends HttpServlet {
	private static final long serialVersionUID = 1L;
    EmployeeService es = new EmployeeService(); 
    RequestDispatcher rd;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginChecker() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("login.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		// Authenticating username and password
		Employee emp = es.loginCheck(username, password);
		
		// Checking if emp is not null
		if(emp != null)
		{
			if(emp.isAdmin() == true) {
				HttpSession session = request.getSession(true);
				session.setAttribute("employee", emp);
				
//				request.setAttribute("emp", emp);
//				rd = getServletContext().getRequestDispatcher("/adminHome.jsp");
//				rd.include(request, response);
				response.sendRedirect("adminHome.jsp");
			}
			else {
				HttpSession session = request.getSession(true);
				session.setAttribute("employee", emp);
				
//				request.setAttribute("emp", emp);
//				rd = getServletContext().getRequestDispatcher("/userHome.jsp");
//				rd.include(request, response);
				response.sendRedirect("userHome.jsp");
			}
		}
		else
		{
			request.setAttribute("loginfailed", "failed");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
            rd.include(request, response);
		}
		
	}

}
