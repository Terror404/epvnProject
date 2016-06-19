package model.dao.project;

import java.util.List;

import model.HibernateUtil;
import model.beans.donation.Donation;
import model.beans.project.Project;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

public class ProjectDao {

	public List<Project> getProjectById(Integer idProject){
		SessionFactory sessions = HibernateUtil.getSessionFactory();
		Session session = sessions.openSession();
		
		Criteria criteria = session.createCriteria(Donation.class);
		List projects = criteria
				.add(Restrictions.eq("idProject", idProject))
				.list();
		
		return projects;
	}
	
	public List<Project> getProjectByCategory(Integer categoryProject){
		SessionFactory sessions = HibernateUtil.getSessionFactory();
		Session session = sessions.openSession();
		
		Criteria criteria = session.createCriteria(Donation.class);
		List projects = criteria
				.add(Restrictions.eq("categoryProject", categoryProject))
				.list();
		
		return projects;
	}
	
	public List<Project> getProjectByDonationId(Integer idDonation){
		SessionFactory sessions = HibernateUtil.getSessionFactory();
		Session session = sessions.openSession();
		
		Criteria criteria = session.createCriteria(Donation.class);
		List projects = criteria
				.add(Restrictions.eq("idDonation", idDonation))
				.list();
		
		return projects;
	}
	
	public List<Project> getProjectByStatus(Integer status){
		SessionFactory sessions = HibernateUtil.getSessionFactory();
		Session session = sessions.openSession();
		
		Criteria criteria = session.createCriteria(Donation.class);
		List projects = criteria
				.add(Restrictions.eq("status", status))
				.list();
		
		return projects;
	}
	
	public List<Project> getProjectByLocation(Integer idLocation){
		SessionFactory sessions = HibernateUtil.getSessionFactory();
		Session session = sessions.openSession();
		
		Criteria criteria = session.createCriteria(Donation.class);
		List projects = criteria
				.add(Restrictions.eq("idLocation", idLocation))
				.list();
		
		return projects;
	}

	public List<Project> getProjectByEventId(Integer idEvent){
		SessionFactory sessions = HibernateUtil.getSessionFactory();
		Session session = sessions.openSession();
		
		Criteria criteria = session.createCriteria(Donation.class);
		List projects = criteria
				.add(Restrictions.eq("idEvent", idEvent))
				.list();
		
		return projects;
	}
}
