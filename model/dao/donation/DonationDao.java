package model.dao.donation;

import java.util.Date;
import java.util.List;

import model.HibernateUtil;
import model.beans.donation.Donation;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

public class DonationDao {

	public List<Donation> getDonationById(Integer idDonation){
		SessionFactory sessions = HibernateUtil.getSessionFactory();
		Session session = sessions.openSession();
		
		Criteria criteria = session.createCriteria(Donation.class);
		List donations = criteria
				.add(Restrictions.eq("idDonation", idDonation))
				.list();
		
		return donations;
	}

	public List<Donation> getDonationByProfileId(Integer idUser){
		SessionFactory sessions = HibernateUtil.getSessionFactory();
		Session session = sessions.openSession();
		
		Criteria criteria = session.createCriteria(Donation.class);
		List donations = criteria
				.add(Restrictions.eq("idUser", idUser))
				.list();
		
		return donations;
	}

	public List<Donation> getDonationByProjectId(Integer idProject){
		SessionFactory sessions = HibernateUtil.getSessionFactory();
		Session session = sessions.openSession();
		
		Criteria criteria = session.createCriteria(Donation.class);
		List donations = criteria
				.add(Restrictions.eq("idProject", idProject))
				.list();
		
		return donations;
	}
	
	public List<Donation> getDonationBySubProjectId(Integer idSubProject){
		SessionFactory sessions = HibernateUtil.getSessionFactory();
		Session session = sessions.openSession();
		
		Criteria criteria = session.createCriteria(Donation.class);
		List donations = criteria
				.add(Restrictions.eq("idSubProject", idSubProject))
				.list();
		
		return donations;
	}
	
	public List<Donation> getAdhesionStatusByYearAndProfileId(Integer idUser, Date submitDate){
		SessionFactory sessions = HibernateUtil.getSessionFactory();
		Session session = sessions.openSession();
		
		Criteria criteria = session.createCriteria(Donation.class);
		List donations = criteria
				.add(Restrictions.eq("idUser", idUser))
				.add(Restrictions.eq("submitDate", submitDate))
				.list();
		
		return donations;
	}
}