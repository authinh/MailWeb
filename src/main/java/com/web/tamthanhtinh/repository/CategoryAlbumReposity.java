package com.web.tamthanhtinh.repository;

import java.util.Collection;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.web.tamthanhtinh.model.Albums;
import com.web.tamthanhtinh.model.Category;
import com.web.tamthanhtinh.model.CategoryAlbum;


@Repository
public interface CategoryAlbumReposity extends CrudRepository<CategoryAlbum, Integer>{

	public Iterable<CategoryAlbum> findByCategory(Category category);
}
