package controler.donation;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beans.donation.DonationForm;
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
@WebServlet(name="CreateDonation", urlPatterns={"/donationForm"})
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
		
		request.getServletContext().getRequestDispatcher("/jsp/donationForm.jsp").
				forward(request, response);
		
		
	}

	/**
	 * @see HttpSer²vlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	public void InsertCreateDonation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		DonationForm donationForm = new DonationForm();
		
		//get the type donation from id
		TypeDonation typeDonation = new TypeDonation();
		//typeDonation = typeDonationDAO.getTypeDonationById();
		donationForm.setTypeDonation(typeDonation);
		donationForm.setFirstName(request.getParameter("lastName"));
		donationForm.setLastName(request.getParameter("lastName"));
		donationForm.setMailAddress(request.getParameter("lastName"));
		donationForm.setValue(Double.parseDouble(request.getParameter("value")));
		donationForm.setMoneyType(request.getParameter("moneyType"));
		donationForm.setPhoneNumber(request.getParameter("phoneNumber"));
		donationForm.setSubmitDate(new Date());
		
		//get the project from the ID
		Project project= new Project();
		SubProject subProject = new SubProject();
		//project= projectDAO.getProjectById(request.getParameter("projectId");
		//subProject= subProjectDAO.getSubProjectById(request.getParameter(subProjectId");
		donationForm.setProject(project);
		donationForm.setSubProject(subProject);
		donationForm.setAddress(request.getParameter("lastName"));
		donationForm.setZipCode(request.getParameter("lastName"));
		donationForm.setCity(request.getParameter("lastName"));
		CompanyInfos companyInfos = new CompanyInfos();
		//set every set of company infos		
		donationForm.setCompanyInfos(companyInfos);
		
		//add to file then put the path
		String path = new String();
		donationForm.setMaterialDonation(path);
		
		//get the form values
		User user = new User();
		donationForm.setUser(user);
		System.out.println(donationForm.getAddress());
		
		
		
		
		
		
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/form.jsp");
		dispatcher.include(request, response);
		
	}

}
