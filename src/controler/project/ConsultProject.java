package controler.project;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beans.project.Project;

/**
 * Servlet implementation class ConsultProject
 */
@WebServlet("/ConsultProject")
public class ConsultProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConsultProject() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		init(request,response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	public void init(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		Project projectToLoad = new Project();
		//projectToLoad = projectDao.getProjectById();
		
		request.setAttribute("projectTitle","Dat title" );
		request.setAttribute("objectifProject","Dat objectif" );
		request.setAttribute("concernedPublic","Dat public" );
		request.setAttribute("descriptionProject","Dat description" );
		request.setAttribute("partnersProject","Dat partners" );
		request.setAttribute("actualAchievedGoal","5299" );
		request.setAttribute("finalGoal","10000" );
		System.out.println("done");
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/jsp/projectView.jsp");
		dispatcher.include(request, response);
		
	}

}
