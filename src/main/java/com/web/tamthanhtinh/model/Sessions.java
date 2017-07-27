package com.web.tamthanhtinh.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.NumberFormat;

@Entity
@Table(name= "sessions")
public class Sessions implements Serializable{
	@Id
	private String id;
	
	@ManyToOne
	@JoinColumn(name = "userID")
	@NumberFormat
	private Users userID;
	
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date onlTime;

	public Sessions() {
		super();
		// TODO Auto-generated constructor stub
	}


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}


	public Date getOnlTime() {
		return onlTime;
	}


	public void setOnlTime(Date onlTime) {
		this.onlTime = onlTime;
	}


	public Users getUserID() {
		return userID;
	}


	public void setUserID(Users userID) {
		this.userID = userID;
	}
	
	
}
