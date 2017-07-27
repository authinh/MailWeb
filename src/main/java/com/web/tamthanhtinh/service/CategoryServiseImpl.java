package com.web.tamthanhtinh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.tamthanhtinh.model.Category;
import com.web.tamthanhtinh.repository.CategoryReposity;
import com.web.tamthanhtinh.repository.SessionRepository;

@Service
@Transactional
public class CategoryServiseImpl implements IService<Category, Integer> {

	@Autowired
	private final CategoryReposity categoryReposity;

	public CategoryServiseImpl(CategoryReposity categoryReposity) {

		this.categoryReposity = categoryReposity;
	}

	@Override
	public Iterable<Category> findAll() {
		// TODO Auto-generated method stub
		return categoryReposity.findAll();
	}

	@Override
	public List<Category> search(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Category findOne(Integer id) {
		// TODO Auto-generated method stub
		return categoryReposity.findOne(id);
	}

	@Override
	public void save(Category t) {
		// TODO Auto-generated method stub
		categoryReposity.save(t);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		categoryReposity.delete(id);
	}

}
