package com.buixuan.example.spring;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "apprenti")
public class Apprenti {
	@Id @GeneratedValue private long id;
	private String firstname;
	private String lastname;
	
	@OneToMany(mappedBy = "apprenti", fetch = FetchType.LAZY)
	private List<Competence> competences;
	
	public Apprenti(){
	}
	
	public Apprenti(long id, String firstname, String lastname){
		this.id=id;
		this.firstname=firstname;
		this.lastname=lastname;
		this.competences=new ArrayList<Competence>();
	}
	public Apprenti(long id, String firstname, String lastname, List<Competence> competences){
		this.id=id;
		this.firstname=firstname;
		this.lastname=lastname;
		this.competences=competences;
	}
	
	/**********************************************************************/
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String name) {
		this.firstname = name;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String name) {
		this.lastname = name;
	}
	public List<Competence> getCompetences() {
		return competences;
	}
	public void setCompetences(List<Competence> competences) {
		this.competences = competences;
	}
}
