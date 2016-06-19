package model.dao.projectCategory;

import java.util.List;

import model.HibernateUtil;
import model.beans.donation.Donation;
import model.beans.project.Project;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

public class ProjectCategoryDao {

	public List<Project> getCategoryById(Integer idCategoryProject){
		SessionFactory sessions = HibernateUtil.getSessionFactory();
		Session session = sessions.openSession();
		
		Criteria criteria = session.createCriteria(Donation.class);
		List projectCategories = criteria
				.add(Restrictions.eq("idCategoryProject", idCategoryProject))
				.list();
		
		return projectCategories;
	}
}
