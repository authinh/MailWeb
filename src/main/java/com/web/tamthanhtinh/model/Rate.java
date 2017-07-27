package com.web.tamthanhtinh.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.ColumnTransformer;
import org.hibernate.annotations.Synchronize;
import org.hibernate.annotations.TypeDef;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.NumberFormat;

@Entity
@Table(name="rate")
public class Rate implements Serializable{

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	@NotNull
	@NotEmpty
	@NumberFormat
	@ManyToOne
	@JoinColumn(name="albumID")
	private Albums album;
	
	@NotEmpty
	@NotNull
	@ManyToOne
	@JoinColumn(name="sessionID")
	private Sessions session;
	
	private float scose;

	public Rate() {
		super();
		// TODO Auto-generated constructor stub
	}


	public float getScose() {
		return scose;
	}

	public void setScose(float scose) {
		this.scose = scose;
	}
	
	
	
}
