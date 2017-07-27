package com.web.tamthanhtinh.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.NumberFormat;
@Entity
@Table(name="musics")
public class Musics implements Serializable{

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	private String name;
	
	private String title;
	
	@NumberFormat
	@ManyToOne
	@JoinColumn(name="singerID")
	private Person singer;
	
	@NumberFormat
	@ManyToOne
	@JoinColumn(name="authorID")
	private Person author;
	
	private String link;
	
	private boolean active;
	
	private float size;
	
	@NumberFormat
	@ManyToOne
	@JoinColumn(name="userbyID")
	private Users userby;
	
	private int bitRate;
	
	
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dateUp;

	public Musics() {
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

	

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public float getSize() {
		return size;
	}

	public void setSize(float size) {
		this.size = size;
	}


	public int getBitRate() {
		return bitRate;
	}

	public void setBitRate(int bitRate) {
		this.bitRate = bitRate;
	}

	public Date getDateUp() {
		return dateUp;
	}

	public void setDateUp(Date dateUp) {
		this.dateUp = dateUp;
	}



	public Person getSinger() {
		return singer;
	}



	public void setSinger(Person singer) {
		this.singer = singer;
	}



	public Person getAuthor() {
		return author;
	}



	public void setAuthor(Person author) {
		this.author = author;
	}





	public Users getUserby() {
		return userby;
	}



	public void setUserby(Users userby) {
		this.userby = userby;
	}
	
	
}
