package com.web.tamthanhtinh.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.tamthanhtinh.model.CategoryAlbum;
import com.web.tamthanhtinh.repository.CategoryAlbumReposity;
import com.web.tamthanhtinh.service.serviceinterface.CategoryAlbumService;

@Service("CategoryAlbumServiceImpl")
@Transactional
public class CategoryAlbumServiceImpl implements CategoryAlbumService{

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
