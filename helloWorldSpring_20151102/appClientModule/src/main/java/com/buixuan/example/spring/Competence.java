package com.buixuan.example.spring;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "competence")
public class Competence {
	@Id
	@GeneratedValue
	private long id;
	
	private String name;
	
	@ManyToOne
	@JoinColumn(name = "apprenti_id", referencedColumnName = "id")
	private Apprenti apprenti;

	/**********************************************************************/
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Apprenti getApprenti() {
		return apprenti;
	}

	public void setApprenti(Apprenti a) {
		this.apprenti = a;
	}
	
}