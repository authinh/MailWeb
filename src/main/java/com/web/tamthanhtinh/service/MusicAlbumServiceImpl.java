package com.web.tamthanhtinh.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.tamthanhtinh.model.MusicAlbum;
import com.web.tamthanhtinh.repository.MusicAlbumReposity;
import com.web.tamthanhtinh.service.serviceinterface.MusicAlbumService;

@Service("MusicAlbumServiceImpl")
@Transactional
public class MusicAlbumServiceImpl implements MusicAlbumService{

	private final MusicAlbumReposity musicAlbumReposity;
	
	
	@Autowired
	public MusicAlbumServiceImpl(MusicAlbumReposity musicAlbumReposity) {
		this.musicAlbumReposity = musicAlbumReposity;
	}

	@Override
	public Iterable<MusicAlbum> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MusicAlbum> search(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MusicAlbum findOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(MusicAlbum t) {
		musicAlbumReposity.save(t);
		
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

}
