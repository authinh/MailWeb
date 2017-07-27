package com.web.tamthanhtinh.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.NumberFormat;

@Entity
@Table(name="music_album")
public class MusicAlbum implements Serializable{
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	@NotNull
	@NumberFormat
	@ManyToOne(optional = false)
	@JoinColumn(name="musicID")
	private Musics music;
	
	@NotNull
	@NumberFormat
	@ManyToOne(optional = false)
	@JoinColumn(name="albumID")
	private Albums album;

	public MusicAlbum() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	
	public MusicAlbum(Musics music, Albums album) {
		super();
		this.music = music;
		this.album = album;
	}



	public Musics getMusic() {
		return music;
	}

	public void setMusic(Musics music) {
		this.music = music;
	}

	public Albums getAlbum() {
		return album;
	}

	public void setAlbum(Albums album) {
		this.album = album;
	}


	
	
}
