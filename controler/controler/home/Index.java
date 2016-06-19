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
		
		Project project1= new Project();
		project1.setTitleProject("Titre du projet 1");
		project1.setGoal(1000);
		project1.setActualAchievedGoal(700);
		project1.setStatus(1);
		project1.setPicturePath("../img/img1.jpg");
		
		Project project2 = new Project();
		project2.setTitleProject("Titre du projet 2");
		project2.setGoal(2000);
		project2.setActualAchievedGoal(10);
		project2.setStatus(0);
		project2.setPicturePath("../img/img1.jpg");
		
		projectsList.add(project1);
		projectsList.add(project1);
		projectsList.add(project1);
		projectsList.add(project2);
		projectsList.add(project2);
		
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
