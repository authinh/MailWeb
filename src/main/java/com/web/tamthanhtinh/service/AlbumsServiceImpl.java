package com.web.tamthanhtinh.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.tamthanhtinh.model.Albums;
import com.web.tamthanhtinh.model.Category;
import com.web.tamthanhtinh.model.CategoryAlbum;
import com.web.tamthanhtinh.repository.AlbumsReposity;
import com.web.tamthanhtinh.repository.CategoryAlbumReposity;
import com.web.tamthanhtinh.service.serviceinterface.AlbumService;

@Service()
@Transactional
public class AlbumsServiceImpl implements AlbumService{

	private final AlbumsReposity albumsReposity;
	private final CategoryAlbumReposity categoryAlbumReposity;
	
	

	public AlbumsServiceImpl(AlbumsReposity albumsReposity, CategoryAlbumReposity categoryAlbumReposity) {
		
		this.albumsReposity = albumsReposity;
		this.categoryAlbumReposity = categoryAlbumReposity;
	}

	@Override
	public Iterable<Albums> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Albums> search(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Albums findOne(Integer id) {
		// TODO Auto-generated method stub
		return albumsReposity.findOne(id);
	}

	@Override
	public void save(Albums t) {
		albumsReposity.save(t);
		
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

	/*
	 * (non-Javadoc) return list Albums have same Category
	 * @see com.web.tamthanhtinh.service.ISelectObjectByID#SelectObjectByID(java.lang.Object)
	 */
	@Override
	public List<Albums> SelectObjectByID(Integer id) {
		// TODO Auto-generated method stub
		Category category = new Category();
		category.setId(id);
		List<Albums> listAlbums = new ArrayList<Albums>();
		for (CategoryAlbum iterable_element : categoryAlbumReposity.findByCategory(category)) {
			listAlbums.add(iterable_element.getAlbum());
			System.out.println("thinh:======>");
		}
		return listAlbums;
	}

}
