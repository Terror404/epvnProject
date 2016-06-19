package model.dao.profile;

import java.util.List;

import model.HibernateUtil;
import model.beans.donation.Donation;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import sun.java2d.cmm.Profile;

public class ProfileDao {

	public List<Profile> getProfileById(Integer idDonation){
		SessionFactory sessions = HibernateUtil.getSessionFactory();
		Session session = sessions.openSession();
		
		Criteria criteria = session.createCriteria(Donation.class);
		List profiles = criteria
				.add(Restrictions.eq("idDonation", idDonation))
				.list();
		
		return profiles;
	}
}