package com.web.tamthanhtinh.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.tamthanhtinh.model.Language;
import com.web.tamthanhtinh.repository.LanguageReposity;
import com.web.tamthanhtinh.service.serviceinterface.LanguageService;

@Service("LanguageServiceImpl")
@Transactional
public class LanguageServiceImpl implements LanguageService{

	private final LanguageReposity LanguageReposity;
	
	
	@Autowired
	public LanguageServiceImpl(LanguageReposity LanguageReposity) {
		this.LanguageReposity = LanguageReposity;
	}

	@Override
	public Iterable<Language> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Language> search(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Language findOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Language t) {
		LanguageReposity.save(t);
		
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

}
