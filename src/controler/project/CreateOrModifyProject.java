package controler.project;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beans.project.CategoryProject;
import model.beans.project.Project;

/**
 * Servlet implementation class CreateOrModifyProject
 */
@WebServlet("/CreateOrModifyProject")
public class CreateOrModifyProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateOrModifyProject() {
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
		insertProject(request,response);
	}
	public void insertProject(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		Project project = new Project();
		Boolean isMandatoryEmptyOrNull=false;
		
		//TODO: controler les champs obligatoires
		for(String param : request.getParameterMap().keySet()){
				if(request.getParameter(param)==null||"".equals(request.getParameter(param))){
					isMandatoryEmptyOrNull=true;
				}
		}
		
		if(isMandatoryEmptyOrNull){
			RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/jsp/projectForm.jsp");
			dispatcher.include(request, response);
		}else{
			project.setBeginDate(new Date());
			//set de l'auteur quand on aura des user connectés project.setAuthor(author);
			//TODO: catégorie du projet
			CategoryProject categoryProject = new CategoryProject();
			project.setCategoryProject(categoryProject);
			project.setConcernedPublic(request.getParameter("concernedPublic"));
			project.setDescriptionProject(request.getParameter("descriptionProject"));
			//TODO: set end date
			//project.setEndDate(endDate);
			//TODO: set goal
			//project.setGoal(goal);
			project.setObjectifDescription(request.getParameter("objectifDescriptionProject"));
			project.setPartnersProject(request.getParameter("partnersProject"));
			project.setTitleProject(request.getParameter("titleProject"));
			RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/jsp/projectView.jsp");
			dispatcher.include(request, response);
			
		}
	}
}
