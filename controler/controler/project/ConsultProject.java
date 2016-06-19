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

/*import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate3.HibernateTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;*/

/**
 * Servlet implementation class ConsultProject
 */
@WebServlet("/ConsultProject")
//@Transactional
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
		/*ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		SessionFactory dbSessionFactory = (SessionFactory)ctx.getBean("dbSessionFactory");*/
		/*DefaultTransactionDefinition def = new DefaultTransactionDefinition();*/
		// explicitly setting the transaction name is something that can only be done programmatically
		/*def.setName("Begin");
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		
		HibernateTransactionManager txManager = (HibernateTransactionManager)ctx.getBean("transactionManager");
		TransactionStatus txStatus = txManager.getTransaction(def);
		Session session = dbSessionFactory.getCurrentSession();
		session.beginTransaction();
		Criteria crit = session.createCriteria("model.beans.project.Project");
		crit.add(Restrictions.eq("idProject",1));*/
		
		
		
		//module a supprimer quand on aura la dao
		List<SubProject> subProjects = new ArrayList<SubProject>();
		SubProject subProject1 = new SubProject();
		subProject1.setTitle("First Sub Project");
		subProject1.setDescription("First Description");
		subProject1.setGoal(100);
		subProject1.setActualAchievedGoal(20);
		SubProject subProject2 = new SubProject();
		subProject2.setTitle("Second Sub Project");
		subProject2.setDescription("Second Description");
		subProject2.setGoal(500);
		subProject2.setActualAchievedGoal(435);
		subProjects.add(subProject1);
		subProjects.add(subProject2);
		//Fin du module a supprimer
		
		projectToLoad.setTitleProject("Mon titre");
		projectToLoad.setActualAchievedGoal(1234.56);
		projectToLoad.setGoal(7582.23);
		projectToLoad.setPicturePath("../img/img1.jpg");
		projectToLoad.setLatLng("16.457088/107.5079128");
		projectToLoad.setSubProjectList(subProjects);
		request.setAttribute("project",projectToLoad);
		/*projectToLoad=(Project)crit.uniqueResult();
		System.out.println(projectToLoad.getActualAchievedGoal());*/
		request.setAttribute("project",projectToLoad);
		System.out.println("Log: Project init done");
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/jsp/projectView.jsp");
		dispatcher.include(request, response);
		
	}

}
