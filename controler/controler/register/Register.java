package controler.register;

import java.io.IOException;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;

/**
 * Servlet implementation class CreateDonation
 */

@Controller
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
    }
    /**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Init(request,response);
	}

	/**
	 * @see HttpSer�vlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Init(request,response);
		
	}
	public void Init(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/jsp/register.jsp");
		dispatcher.include(request, response);
		
	}

}
