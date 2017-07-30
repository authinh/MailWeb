package com.web.tamthanhtinh.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.tamthanhtinh.model.Person;
import com.web.tamthanhtinh.repository.PersonReposity;
import com.web.tamthanhtinh.service.serviceinterface.PersonService;

@Service("PersonServiceImpl")
@Transactional
public class PersonServiceImpl implements PersonService{

	private final PersonReposity PersonReposity;
	
	
	@Autowired
	public PersonServiceImpl(PersonReposity PersonReposity) {
		this.PersonReposity = PersonReposity;
	}

	@Override
	public Iterable<Person> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Person> search(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Person findOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Person t) {
		PersonReposity.save(t);
		
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

}
