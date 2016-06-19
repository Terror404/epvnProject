package controler.project;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Hashtable;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.File;
import java.util.List;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;




import model.beans.project.CategoryProject;
import model.beans.project.Project;

/**
 * Servlet implementation class CreateOrModifyProject
 */
@WebServlet("/CreateOrModifyProject")
public class CreateOrModifyProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String UPLOAD_DIRECTORY = "C:/test";

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
		// set de l'auteur quand on aura des user connectés
		// project.setAuthor(author);
		System.out.println("create project");
		try {
			Hashtable multipartParams = CreateOrModifyProject.getParamsFromMultipartForm(request);
			CategoryProject categoryProject = new CategoryProject();
			project.setCategoryProject(categoryProject);
			project.setConcernedPublic((String)multipartParams.get("concernedPublic"));
			project.setDescriptionProject((String)multipartParams.get("descriptionProject"));
			String goalStr = (String)multipartParams.get("goalProject");
			project.setGoal(Double.parseDouble(goalStr));
			project.setLatLng((String)multipartParams.get("lat")+"/"+(String)multipartParams.get("lng"));
			System.out.println(project.getLatLng());
			project.setObjectifDescription((String)multipartParams.get("objectifDescriptionProject"));
			project.setPartnersProject((String)multipartParams.get("partnersProject"));
			project.setTitleProject((String)multipartParams.get("titleProject"));
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String beginDateStr = (String) multipartParams.get("beginDate");
			System.out.println("beginDateStr" + beginDateStr);
			String endDateStr = (String) multipartParams.get("endDate");
			System.out.println("endDateStr" + endDateStr);
			try {
				Date beginDate = sdf.parse(beginDateStr);
				project.setBeginDate(beginDate);
				System.out.println(beginDate);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("pb parse");
			}
			try {
				Date endDate = sdf.parse(endDateStr);
				project.setEndDate(endDate);
				System.out.println(endDate);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("pb parse");
			}
			System.out.println("les dates sont ajoutées");
			// TODO: upload img
			project.setPicturePath("../img/img1.jpg");
			request.setAttribute("project",project);
			RequestDispatcher dispatcher = getServletContext()
					.getRequestDispatcher("/jsp/projectView.jsp");
			dispatcher.include(request, response);
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		}
	
	public static Hashtable getParamsFromMultipartForm(HttpServletRequest req) throws FileUploadException {
    Hashtable ret = new Hashtable();
    List<FileItem> items = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(req);
    for (FileItem item : items) {
        if (item.isFormField()) {
            ret.put(item.getFieldName(), item.getString());
        }
    }
    return ret;
	}
}
