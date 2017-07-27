package com.web.tamthanhtinh.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
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
@Table(name= "album")
public class Albums implements Serializable{
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	private String name;
	
	private String title;
	
	private String roleName;
	

	
	private String thumbImage;
	
	private int numView;
	
	private int upbyID;
	
	@Column(name="description")
	private String describe;
	
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date addTime;
	
	private boolean status;
	
	private int rateID;
	
	private String tag;
	
	private String backgroundURL;
	
	private String URL;

	public Albums() {
		super();
		// TODO Auto-generated constructor stub
	}

	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}


	public String getThumbImage() {
		return thumbImage;
	}

	public void setThumbImage(String thumbImage) {
		this.thumbImage = thumbImage;
	}

	public int getNumView() {
		return numView;
	}

	public void setNumView(int numView) {
		this.numView = numView;
	}

	public int getUpbyID() {
		return upbyID;
	}

	public void setUpbyID(int upbyID) {
		this.upbyID = upbyID;
	}

	public String getDescribe() {
		return describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}

	public Date getAddTime() {
		return addTime;
	}

	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public int getRateID() {
		return rateID;
	}

	public void setRateID(int rateID) {
		this.rateID = rateID;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public String getBackgroundURL() {
		return backgroundURL;
	}

	public void setBackgroundURL(String backgroundURL) {
		this.backgroundURL = backgroundURL;
	}

	public String getURL() {
		return URL;
	}

	public void setURL(String uRL) {
		URL = uRL;
	}



	

	
}
