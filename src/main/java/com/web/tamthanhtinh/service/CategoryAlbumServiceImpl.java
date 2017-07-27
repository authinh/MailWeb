package com.web.tamthanhtinh.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.tamthanhtinh.model.CategoryAlbum;
import com.web.tamthanhtinh.repository.CategoryAlbumReposity;

@Service
@Transactional
public class CategoryAlbumServiceImpl implements IService<CategoryAlbum, Integer>{

	private final CategoryAlbumReposity CategoryAlbumReposity;
	
	
	@Autowired
	public CategoryAlbumServiceImpl(CategoryAlbumReposity CategoryAlbumReposity) {
		this.CategoryAlbumReposity = CategoryAlbumReposity;
	}

	@Override
	public Iterable<CategoryAlbum> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CategoryAlbum> search(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CategoryAlbum findOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(CategoryAlbum t) {
		CategoryAlbumReposity.save(t);
		
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

}
