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
	 * @see HttpSer�vlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getRequestURI().equals("/epvnProject/donation/do")){
			InsertCreateDonation(request,response);
		}else if(request.getRequestURI().equals("/epvnProject/donation/init")){
			Init(request,response);
		}

		
	}
	public void Init(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		//TODO:si un user est connect�, rentrer ses informations par d�faut
		//TODO:r�cup�rer la page projet dont l'on vient pour renseigner les champs par d�faut
		
		// � supprimer quand les dao sont pretes
		Project project = new Project();
		project.setIdProject(20);
		project.setTitleProject("mytitel");
		List<SubProject> subProjects = new ArrayList<SubProject>();
		SubProject subProject1 = new SubProject();
		subProject1.setTitle("First Sub Project");
		subProject1.setDescription("First Description");
		SubProject subProject2 = new SubProject();
		subProject2.setTitle("Second Sub Project");
		subProject2.setDescription("Second Description");
		subProjects.add(subProject1);
		subProjects.add(subProject2);
		project.setSubProjectList(subProjects);
		//fin de � supprimer
		
		
		
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
			TypeDonation typeDonation = new TypeDonation();
			//TODO : typeDonation = typeDonationDAO.getTypeDonationById();
			donationForm.setTypeDonation(typeDonation);
			donationForm.setFirstName(request.getParameter("firstname"));
			donationForm.setLastName(request.getParameter("lastname"));
			donationForm.setMailAddress(request.getParameter("email"));
			if(request.getParameter("amount")!=null && ! "".equals(request.getParameter("amount"))){
				donationForm.setValue(Double.parseDouble(request.getParameter("amount")));
			}
			donationForm.setPhoneNumber(request.getParameter("phone"));
			donationForm.setSubmitDate(new Date());
			
			//get the project from the ID
			Project project= new Project();
			SubProject subProject = new SubProject();
			//project= projectDAO.getProjectById(request.getParameter("projectId");
			//subProject= subProjectDAO.getSubProjectById(request.getParameter(subProjectId");
			donationForm.setProject(project);
			donationForm.setSubProject(subProject);
			donationForm.setAddress(request.getParameter("address"));
			donationForm.setZipCode(request.getParameter("zip"));
			donationForm.setCity(request.getParameter("city"));
			
			CompanyInfos companyInfos = new CompanyInfos();
			//set every set of company infos	
			companyInfos.setCompanyName(request.getParameter("companyName"));
			if(request.getParameter("isCompany")!=null){
				System.out.println("isCompany : true");
				companyInfos.setSirenNum(Integer.parseInt(request.getParameter("sirenNum")));
				companyInfos.setPhysicalAddress(request.getParameter("addressCompany"));
				companyInfos.setZipCode(request.getParameter("zipCompany"));
				companyInfos.setCity(request.getParameter("cityCompany"));
				companyInfos.setCountry(request.getParameter("countryCompany"));
			}else{
				System.out.println("isCompany : false");
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
