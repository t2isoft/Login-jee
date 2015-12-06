package com.buixuan.example.spring;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@SuppressWarnings({"unchecked", "rawtypes"})
public class ApprentiDAO {
	
	@Autowired private SessionFactory sessionFactory;
	
	/**
	 * @Transactional annotation below will trigger Spring Hibernate transaction manager to automatically create
	 * a hibernate session. See src/main/webapp/WEB-INF/servlet-context.xml
	 */
	@Transactional
	public List<Apprenti> findAll() {
		Session session = sessionFactory.getCurrentSession();
		List apprentis = session.createQuery("from Apprenti").list();
		return apprentis;
	}
	
	@Transactional
	public List<Apprenti> findAllWithCompetences() {
		Session session = sessionFactory.getCurrentSession();
		List apprentis = session.createQuery("select distinct a from Apprenti as a left join fetch a.competences").list();
		//logger.debug(apprentis.toString());
		return apprentis;
	}
}