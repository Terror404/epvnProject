package controler.profile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.SessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import model.beans.profile.User;
import model.beans.project.Project;

/**
 * Servlet implementation class ConsultProfile
 */
@WebServlet("/ConsultProfile")
public class ConsultProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ConsultProfile() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	public void init(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");

		// get user info from the database
		User user = new User();
		user.setIdUser(1);
		user.setRole(0);
		user.setMailAddress("user@mail.com");
		user.setPassword("password");
		user.setFirstName("firstName");
		user.setLastName("lastName");
		user.setAdherent(0);
		user.setCity("city");
		user.setZipCode("00000");
		user.setCountry("country");
		user.setCreationDate(new Date());
		user.setPhysicalAddress("address");
		user.setAdminLevel(0);
		user.setPhoneNumber("phoneNumber");

		// get the projects backed by the user from the database
		ArrayList<Project> projectsList = new ArrayList<Project>();
		Project project = new Project();
		project.setTitleProject("Parrainage collectif des enfants atteints du VIH de l’orphelinat de Bac Giang");
		project.setGoal(1000);
		project.setActualAchievedGoal(700);

		projectsList.add(project);
		projectsList.add(project);
		projectsList.add(project);

		request.setAttribute("profile", user);
		request.setAttribute("projectsList", projectsList);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/jsp/profile.jsp");
		dispatcher.include(request, response);
	}
}
