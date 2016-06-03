package controler.donation;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beans.donation.Donation;
import model.beans.donation.TypeDonation;
import model.beans.profile.CompanyInfos;
import model.beans.profile.User;
import model.beans.project.Project;
import model.beans.project.SubProject;

import org.springframework.stereotype.Controller;

/**
 * Servlet implementation class CreateDonation
 */

@Controller
public class CreateDonation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateDonation() {
        super();
        
    }
    /**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Init(request,response);
	}

	/**
	 * @see HttpSer²vlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getRequestURI().equals("/epvnProject/donation/do")){
			InsertCreateDonation(request,response);
		}else if(request.getRequestURI().equals("/epvnProject/donation/init")){
			Init(request,response);
		}

		
	}
	public void Init(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		//TODO:si un user est connecté, rentrer ses informations par défaut
		//TODO:récupérer la page projet dont l'on vient pour renseigner les champs par défaut
		
		// à supprimer quand les dao sont pretes
		Project project = new Project();
		project.setIdProject(20);
		project.setTitleProject("My title");
		List<SubProject> subProjects = new ArrayList<SubProject>();
		SubProject subProject1 = new SubProject();
		subProject1.setTitle("First Sub Project");
		subProject1.setDescription("First Description");
		subProject1.setIdSubProject(1);
		SubProject subProject2 = new SubProject();
		subProject2.setTitle("Second Sub Project");
		subProject2.setDescription("Second Description");
		subProjects.add(subProject1);
		subProjects.add(subProject2);
		subProject2.setIdSubProject(2);
		project.setSubProjectList(subProjects);
		//fin de à supprimer
		
		
		
		request.setAttribute("project",project);
		System.out.println("init done");
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/jsp/donationForm.jsp");
		dispatcher.include(request, response);
		
	}
	public void InsertCreateDonation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		Donation donationForm = new Donation();
		Boolean isMandatoryEmptyOrNull=false;
		
		if(isMandatoryEmptyOrNull){
			RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/jsp/donationForm.jsp");
			dispatcher.include(request, response);
		}else{
			System.out.println("Donation begin");
			//TODO : get the type donation from id
			String typeDonation = new String();
			typeDonation = request.getParameter("typeDon");
			
			//BEGIN DONATION CREATION
			
			//set the address
			donationForm.setAddress(request.getParameter("address"));
			donationForm.setZipCode(request.getParameter("zip"));
			donationForm.setCity(request.getParameter("city"));
			donationForm.setMailAddress(request.getParameter("email"));
			donationForm.setPhoneNumber(request.getParameter("phone"));
			if(request.getParameter("amount")!=null && ! "".equals(request.getParameter("amount"))){
				donationForm.setValue(Double.parseDouble(request.getParameter("amount")));
			}
			System.out.println(request.getParameter("address"));
			System.out.println(request.getParameter("zip"));
			System.out.println(request.getParameter("email"));
			System.out.println(request.getParameter("city"));
			System.out.println(request.getParameter("phone"));
			System.out.println(Double.parseDouble(request.getParameter("amount")));
			
			if(request.getParameter("isCompany")!=null){
				//if it is a company
				donationForm.setFirstName(null);
				donationForm.setLastName(null);
				
				//logs
				System.out.println("isCompany part:");
				System.out.print(request.getParameter("firstname")+request.getParameter("lastname")+
						request.getParameter("companyName")+request.getParameter("sirenNumber"));
				
				//donationForm.setCompanyMemberFirstName(request.getParameter("firstname"));
				//donationForm.setCompanyMemberLastName(request.getParameter("lastname"));
				//donationForm.setCompanyName(request.getParameter("companyName"));
				//donationForm.setSirenNumber(request.getParameter("sirenNumber"));
			}else{
				//if its a common profile
				donationForm.setFirstName(request.getParameter("firstname"));
				donationForm.setLastName(request.getParameter("lastname"));
				
				//logs
				System.out.print(request.getParameter("firstname")+request.getParameter("lastname"));
				
			}
			
			donationForm.setSubmitDate(new Date());
			System.out.println(new Date());
			
			if(typeDonation!="parainage"){
			
			//get the project from the ID
			Project project= new Project();
			SubProject subProject = new SubProject();
			//project= projectDAO.getProjectById(request.getParameter("projectId");
			//subProject= subProjectDAO.getSubProjectById(request.getParameter(subProjectId");
			if(project!=null && subProject!=null){
				donationForm.setProject(project);
				donationForm.setSubProject(subProject);
			}
			System.out.println(request.getParameter("project"));
			System.out.println(request.getParameter("subProject"));
			}else{
				
				
				
			}
			
			//add to file then put the path
			String path = new String();
			donationForm.setMaterialDonation(path);
			
			//get the form values
			User user = new User();
			donationForm.setUser(user);
			
			//TODO: insert donation form	
			
			RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/jsp/donationForm.jsp");
			dispatcher.include(request, response);
		}
		
	}

}
