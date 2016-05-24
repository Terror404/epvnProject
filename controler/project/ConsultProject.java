package controler.project;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beans.project.Project;
import model.beans.project.SubProject;

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
		//List<SubProject> subProjects = subProjectDao.getListSubProjectsByProject(projectToLoad);
		
		//module a supprimer quand on aura la dao
		List<SubProject> subProjects = new ArrayList<SubProject>();
		SubProject subProject1 = new SubProject();
		subProject1.setTitle("First Sub Project");
		subProject1.setDescription("First Description");
		SubProject subProject2 = new SubProject();
		subProject2.setTitle("Second Sub Project");
		subProject2.setDescription("Second Description");
		subProjects.add(subProject1);
		subProjects.add(subProject2);
		//Fin du module a supprimer
		
		projectToLoad.setTitleProject("Mon titre");
		projectToLoad.setActualAchievedGoal(1234.56);
		projectToLoad.setGoal(7582.23);
		projectToLoad.setSubProjectList(subProjects);
		request.setAttribute("project",projectToLoad);
		System.out.println("Log: Project init done");
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/jsp/projectView.jsp");
		dispatcher.include(request, response);
		
	}

}
