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
		}else if(request.getRequestURI().equals("/epvnProject/donation/init")){
			BecomeMember(request,response);
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
			try{
			//BEGIN DONATION CREATION
			System.out.println("Donation begin");
			
			//Set Type Donation
			String typeDonation = request.getParameter("typeDon");
			donationForm.setTypeDonation(typeDonation);
						
			//Set common informations
			donationForm.setAddress(request.getParameter("address"));
			donationForm.setZipCode(request.getParameter("zip"));
			donationForm.setCity(request.getParameter("city"));
			donationForm.setMailAddress(request.getParameter("email"));
			donationForm.setPhoneNumber(request.getParameter("phone"));
			if(request.getParameter("amount")!=null && ! "".equals(request.getParameter("amount"))){
				donationForm.setValue(Double.parseDouble(request.getParameter("amount")));
				System.out.println(Double.parseDouble(request.getParameter("amount")));
			}
			System.out.println(request.getParameter("address"));
			System.out.println(request.getParameter("zip"));
			System.out.println(request.getParameter("email"));
			System.out.println(request.getParameter("city"));
			System.out.println(request.getParameter("phone"));
			
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
				donationForm.setCompanyName(request.getParameter("companyName"));
				donationForm.setSiren(Integer.parseInt(request.getParameter("sirenNumber")));
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
			
				//TODO get the project from the ID
				Project project= new Project();
				SubProject subProject = new SubProject();
				//project= projectDAO.getProjectById(request.getParameter("projectId");
				//subProject= subProjectDAO.getSubProjectById(request.getParameter(subProjectId");
				if(project!=null && subProject!=null){
					donationForm.setProject(project);
					donationForm.setSubProject(subProject);
				}else{
					throw new Exception("Project or SubProject missing.") ;
				}
				
				/*TODO add to file then put the path
				if(request.getParameter("attachedFile"){
					inserer la file
				}				
				*/
				String path = new String();
				donationForm.setMaterialDonation(path);
				
				System.out.println(request.getParameter("project"));
				System.out.println(request.getParameter("subProject"));
			}else{
				/*TODO Orphanage orphanage = new Orphanage();
				orphanage = orphanageDAO.getOrphanageById(Integer.parseInt(request.getParameter("orphanage")));
				if(orphanage!=null){
				donationForm.setOrphanage(orphanage);
				donationForm.setNumberOfChildren(Integer.parseInt(request.getParameter("numberOfChildren")));
				}else{
				throw error
				}
				*/				
			}
			
			/*TODO	Si un User est connecté
			 if(connectedUser!=null){
			get the form values
			User user = new User();
			donationForm.setUser(user);
			}*/
			//TODO: insert donation form	
			//donationDAO.insertDonation(donationForm);
			}
			catch(Exception e){
				System.out.println("Error while creating donation:"+e.getMessage());
				System.out.println("Returning to form");
			}
			
			String nextPage ="/jsp/donationForm.jsp";
			if(request.getParameter("membership")!=null){
				nextPage="/jsp/membershipForm.jsp";
				for(String name : request.getParameterMap().keySet()){
					request.setAttribute(name,request.getParameter(name));
					System.out.println(name+" "+request.getParameter(name));
				}
				request.setAttribute("donationForm", donationForm);
			}
			
			RequestDispatcher dispatcher=getServletContext().getRequestDispatcher(nextPage);
			dispatcher.include(request, response);
		}
		
	}
	public void BecomeMember(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		if(request.getAttribute("donationForm")!=null){
			Donation donation = (Donation)request.getAttribute("donationForm");
			//insert donation : donationDAO.insertDonation(donation);
		}
		
	}
	
	public void generateFiscalReceipt(){
		//TODO 
	}

}
