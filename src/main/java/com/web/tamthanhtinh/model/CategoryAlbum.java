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

import org.springframework.format.annotation.NumberFormat;

@Entity
@Table(name="category_album")
public class CategoryAlbum implements Serializable{
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	@ManyToOne(optional = false)
	@JoinColumn(name="categoryID")
	@NumberFormat
	private Category category;
	

	@ManyToOne(optional = false)
	@JoinColumn(name="albumID")
	@NumberFormat
	private Albums album;

	public CategoryAlbum() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Albums getAlbum() {
		return album;
	}

	public void setAlbum(Albums album) {
		this.album = album;
	}

	

	
}
