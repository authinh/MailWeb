package com.web.tamthanhtinh.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.tamthanhtinh.model.Config;
import com.web.tamthanhtinh.repository.ConfigReposity;
import com.web.tamthanhtinh.service.serviceinterface.ConfigService;

@Service("ConfigServiceImpl")
@Transactional
public class ConfigServiceImpl implements ConfigService{

	private final ConfigReposity ConfigReposity;
	
	
	@Autowired
	public ConfigServiceImpl(ConfigReposity ConfigReposity) {
		this.ConfigReposity = ConfigReposity;
	}

	@Override
	public Iterable<Config> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Config> search(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Config findOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Config t) {
		ConfigReposity.save(t);
		
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

}
