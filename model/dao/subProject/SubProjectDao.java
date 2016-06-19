package model.dao.subProject;

import java.util.List;

import model.HibernateUtil;
import model.beans.donation.Donation;
import model.beans.project.Project;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

public class SubProjectDao {

	public List<Project> getSubProjectById(Integer idSubProject){
		SessionFactory sessions = HibernateUtil.getSessionFactory();
		Session session = sessions.openSession();
		
		Criteria criteria = session.createCriteria(Donation.class);
		List subProjects = criteria
				.add(Restrictions.eq("idSubProject", idSubProject))
				.list();
		
		return subProjects;
	}
	
	public List<Project> getSubProjectByDonationId(Integer idDonation){
		SessionFactory sessions = HibernateUtil.getSessionFactory();
		Session session = sessions.openSession();
		
		Criteria criteria = session.createCriteria(Donation.class);
		List subProjects = criteria
				.add(Restrictions.eq("idDonation", idDonation))
				.list();
		
		return subProjects;
	}
	
	public List<Project> getSubProjectByProjectId(Integer idProject){
		SessionFactory sessions = HibernateUtil.getSessionFactory();
		Session session = sessions.openSession();
		
		Criteria criteria = session.createCriteria(Donation.class);
		List subProjects = criteria
				.add(Restrictions.eq("idProject", idProject))
				.list();
		
		return subProjects;
	}
	
	public List<Project> getSubProjectByLocation(Integer idLocation){
		SessionFactory sessions = HibernateUtil.getSessionFactory();
		Session session = sessions.openSession();
		
		Criteria criteria = session.createCriteria(Donation.class);
		List subProjects = criteria
				.add(Restrictions.eq("idLocation", idLocation))
				.list();
		
		return subProjects;
	}

	public List<Project> getSubProjectByEventId(Integer idEvent){
		SessionFactory sessions = HibernateUtil.getSessionFactory();
		Session session = sessions.openSession();
		
		Criteria criteria = session.createCriteria(Donation.class);
		List subProjects = criteria
				.add(Restrictions.eq("idEvent", idEvent))
				.list();
		
		return subProjects;
	}
}
