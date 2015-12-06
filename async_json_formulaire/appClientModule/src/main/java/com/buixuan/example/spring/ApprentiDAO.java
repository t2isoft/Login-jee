package com.buixuan.example.spring;

import java.util.ArrayList;
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
	
	@Transactional
	public List<Apprenti> findAll() {
		Session session = sessionFactory.getCurrentSession();
		List apprentis = session.createQuery("from Apprenti").list();
		return apprentis;
		
		//return debugDB();
	}
	
	@Transactional
	public List<Apprenti> findAllWithCompetences() {
		Session session = sessionFactory.getCurrentSession();
		List apprentis = session.createQuery("select distinct a from Apprenti as a left join fetch a.competences").list();
		return apprentis;
		
		//return debugDB();
	}
	
	/*private List<Apprenti> debugDB(){
		List<Apprenti> apprentis = new ArrayList<Apprenti>();
		Apprenti apprenti;
		List<Competence> competences;
		
		apprenti=new Apprenti(123,"Jean","Valjean");
		competences = new ArrayList<Competence>();
		competences.add(new Competence(1234,"Poet",apprenti));
		competences.add(new Competence(1235,"Karate",apprenti));
		apprenti.setCompetences(competences);
		apprentis.add(apprenti);
		
		apprenti=new Apprenti(124,"Claude","Valdam");
		competences = new ArrayList<Competence>();
		competences.add(new Competence(1236,"Karate",apprenti));
		apprenti.setCompetences(competences);
		apprentis.add(apprenti);
		
		apprenti=new Apprenti(125,"Cosette","Euphrasie");
		competences = new ArrayList<Competence>();
		competences.add(new Competence(1237,"Musique",apprenti));
		apprenti.setCompetences(competences);
		apprentis.add(apprenti);
		
		return apprentis;
	}*/
}