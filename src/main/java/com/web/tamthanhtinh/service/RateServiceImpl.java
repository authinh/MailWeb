package com.web.tamthanhtinh.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.tamthanhtinh.model.Rate;
import com.web.tamthanhtinh.repository.RateReposity;

@Service
@Transactional
public class RateServiceImpl implements IService<Rate, Integer>{

	private final RateReposity RateReposity;
	
	
	@Autowired
	public RateServiceImpl(RateReposity RateReposity) {
		this.RateReposity = RateReposity;
	}

	@Override
	public Iterable<Rate> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Rate> search(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Rate findOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Rate t) {
		RateReposity.save(t);
		
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

}
