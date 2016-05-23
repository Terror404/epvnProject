package controler.home;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beans.project.Project;
import java.util.ArrayList;

/**
 * Servlet implementation class Index
 */
@WebServlet("/Index")
public class Index extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Index() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//get all the projects from the database
		ArrayList projectsList = new ArrayList();
		
		Project project= new Project();
		project.setTitleProject("Titre du projet");
		project.setGoal(1000);
		project.setActualAchievedGoal(700);
		
		projectsList.add(project);
		projectsList.add(project);
		projectsList.add(project);
		projectsList.add(project);
		projectsList.add(project);
		
		request.setAttribute("projectsList", projectsList);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/jsp/index.jsp");
		dispatcher.include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
