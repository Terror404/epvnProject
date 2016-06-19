package model.dao.event;

import java.util.List;

import model.HibernateUtil;
import model.beans.donation.Donation;
import model.beans.project.Project;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

public class EventDao {

	public List<Project> getEventById(Integer idEvent){
		SessionFactory sessions = HibernateUtil.getSessionFactory();
		Session session = sessions.openSession();
		
		Criteria criteria = session.createCriteria(Donation.class);
		List events = criteria
				.add(Restrictions.eq("idEvent", idEvent))
				.list();
		
		return events;
	}
}
