package controler.project;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = getServletContext()
				.getRequestDispatcher("/jsp/projectForm.jsp");
		dispatcher.include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		insertProject(request, response);
	}

	public void insertProject(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Project project = new Project();
		Boolean isMandatoryEmptyOrNull = false;

		// TODO: controler les champs obligatoires
		for (String param : request.getParameterMap().keySet()) {
			if (request.getParameter(param) == null
					|| "".equals(request.getParameter(param))) {
				isMandatoryEmptyOrNull = true;
			}
		}

		if (isMandatoryEmptyOrNull) {
			RequestDispatcher dispatcher = getServletContext()
					.getRequestDispatcher("/jsp/projectForm.jsp");
			dispatcher.include(request, response);
		} else {
			//project.setBeginDate(new Date());
			// set de l'auteur quand on aura des user connect�s
			// project.setAuthor(author);
			// TODO: cat�gorie du projet
			CategoryProject categoryProject = new CategoryProject();
			project.setCategoryProject(categoryProject);
			project.setConcernedPublic(request.getParameter("concernedPublic"));
			project.setDescriptionProject(request.getParameter("descriptionProject"));
			// TODO: set end date
			String beginDateStr = request.getParameter("beginDate");
			String endDateStr = request.getParameter("endDate");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			try {
				project.setBeginDate(sdf.parse(beginDateStr));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				project.setEndDate(sdf.parse(endDateStr));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			// TODO: set goal
			String goalStr = request.getParameter("goalProject");
			project.setGoal(Double.parseDouble(goalStr));
			
			// TODO: upload img
			
			project.setLatLng(request.getParameter("lat")+"/"+request.getParameter("lng"));
			project.setObjectifDescription(request.getParameter("objectifDescriptionProject"));
			project.setPartnersProject(request.getParameter("partnersProject"));
			project.setTitleProject(request.getParameter("titleProject"));
			RequestDispatcher dispatcher = getServletContext()
					.getRequestDispatcher("/jsp/projectView.jsp");
			dispatcher.include(request, response);

		}
	}
}
