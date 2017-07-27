package com.web.tamthanhtinh.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.tamthanhtinh.model.About;
import com.web.tamthanhtinh.repository.AboutReposity;

@Service
@Transactional
public class AboutServiceImpl implements IService<About, Integer>{

	private final AboutReposity AboutReposity;
	
	
	@Autowired
	public AboutServiceImpl(AboutReposity AboutReposity) {
		this.AboutReposity = AboutReposity;
	}

	@Override
	public Iterable<About> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<About> search(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public About findOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(About t) {
		AboutReposity.save(t);
		
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

	

}
