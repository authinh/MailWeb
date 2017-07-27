package com.web.tamthanhtinh.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.ValueGenerationType;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.validation.annotation.Validated;

@Entity
@Table(name="users")
public class Users implements Serializable{

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	private String userName;
	
	private String password;
	
	private String email;
	
	private String fullName;
	
	private boolean gender;
	
	private String photo;
	
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date brithDate;
	
	private String sig;
	
	private String location;
	
	private long telephone;

	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Users(int id, String userName, String password, String email, String fullName, boolean gender, String photo,
			Date brithDate, String sig, String location, long telephone) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.fullName = fullName;
		this.gender = gender;
		this.photo = photo;
		this.brithDate = brithDate;
		this.sig = sig;
		this.location = location;
		this.telephone = telephone;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public boolean isGender() {
		return gender;
	}

	public void setGender(boolean gender) {
		this.gender = gender;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public Date getBrithDate() {
		return brithDate;
	}

	public void setBrithDate(Date brithDate) {
		this.brithDate = brithDate;
	}

	public String getSig() {
		return sig;
	}

	public void setSig(String sig) {
		this.sig = sig;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public long getTelephone() {
		return telephone;
	}

	public void setTelephone(long telephone) {
		this.telephone = telephone;
	}
	
    
}
