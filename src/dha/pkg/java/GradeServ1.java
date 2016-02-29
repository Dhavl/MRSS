package dha.pkg.java;

import java.io.IOException;
import java.io.PrintWriter;
//import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class GradeServ1
 */
public class GradeServ1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GradeServ1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String hdnParam	=	request.getParameter("pagename");
		System.out.println(""+hdnParam);
		
		PrintWriter out = response.getWriter();
		
		if(hdnParam.equals("GradeCal")){
			String fname	=	request.getParameter("txtfName");
			String lname	=	request.getParameter("txtlName");
			String id	=	request.getParameter("sId");
			
			System.out.print(""+fname+lname+id);
		}
	}

}
