package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.EmployeeService;

/**
 * Servlet implementation class UpdateEmployee
 */
@WebServlet("/UpdateEmployee")
public class UpdateEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
	EmployeeService es = new EmployeeService();
	RequestDispatcher rd;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateEmployee() {
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
		int id = Integer.parseInt(request.getParameter("id"));
		String username = request.getParameter("username");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		boolean isAdmin = Boolean.parseBoolean(request.getParameter("isAdmin"));
		float salary = Float.parseFloat(request.getParameter("salary"));
		
		boolean updated = es.updateEmployeeDetails(id, username, firstName, lastName, isAdmin, salary);
		
		if(updated) {
			response.sendRedirect("adminHome.jsp");
		}
		else {
			request.setAttribute("updationFailed", "failed");
			rd = getServletContext().getRequestDispatcher("/adminHome.jsp");
			rd.include(request, response);
		}
	}

}
