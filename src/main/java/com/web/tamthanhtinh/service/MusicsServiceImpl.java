package com.web.tamthanhtinh.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.tamthanhtinh.model.Musics;
import com.web.tamthanhtinh.repository.MusicsReposity;
import com.web.tamthanhtinh.service.serviceinterface.MusicsService;

@Service("MusicsServiceImpl")
@Transactional
public class MusicsServiceImpl implements MusicsService{

	private final MusicsReposity MusicsReposity;
	
	
	@Autowired
	public MusicsServiceImpl(MusicsReposity MusicsReposity) {
		this.MusicsReposity = MusicsReposity;
	}

	@Override
	public Iterable<Musics> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Musics> search(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Musics findOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Musics t) {
		MusicsReposity.save(t);
		
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

}
