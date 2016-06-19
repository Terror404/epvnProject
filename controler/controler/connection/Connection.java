package controler.connection;


import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.beans.profile.User;

import org.springframework.stereotype.Controller;

/**
 * Servlet implementation class CreateDonation
 */

@Controller
public class Connection extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Connection() {
        super();
    }
    /**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Init(request,response);
		HttpSession session = request.getSession();
	}

	/**
	 * @see HttpSer�vlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getRequestURI().equals("/epvnProject/connection/login")){
			createSession(request,response);
			Init(request,response);

		}
		if(request.getRequestURI().equals("/epvnProject/connection/destroy")){
			destroySession(request,response);
			
		}

		
	}
	public void Init(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		//TODO:si un user est connect�, rentrer ses informations par d�faut
		//TODO:r�cup�rer la page projet dont l'on vient pour renseigner les champs par d�faut
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/jsp/loginForm.jsp");
		dispatcher.include(request, response);
		
	}
	public void VerifUser(HttpSession session)
	{
		session.getAttribute("user");
	}
public void createSession	(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	HttpSession session = request.getSession();
	// � supprimer quand les dao sont pretes
			User user = new User();
			user.setIdUser(1);
			user.setRole(1);
			user.setFirstName("José");
			user.setLastName("De la Villardiere");
			user.setMailAddress("jose@hotmail.com");
			user.setPassword("11111111");
			user.setPhoneNumber(684596569);
			Date aujourdhui = new Date(0);
			user.setCreationDate(aujourdhui);
			user.setAdherent(1);
			user.setDateAdherent(aujourdhui);
			user.setAdminLevel(1);
			user.setPhysicalAddress("15 rue meunier");
			user.setZipCode("75014");
			user.setCity("Paris");
			user.setCompanyName("BNP");
			user.setSirenNum(115152155);
			//fin de � supprimer
			
			session.setAttribute("user",user);
			request.setAttribute("user",user);
			System.out.println("init done");
}
protected void destroySession (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	HttpSession session = request.getSession();
	System.out.println("session destroyed");
	session.invalidate();
	Init(request,response);
}
}
