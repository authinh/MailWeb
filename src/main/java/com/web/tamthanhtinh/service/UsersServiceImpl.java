package com.web.tamthanhtinh.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.tamthanhtinh.model.Users;
import com.web.tamthanhtinh.repository.UsersReposity;
import com.web.tamthanhtinh.service.serviceinterface.UsersService;

@Service("UsersServiceImpl")
@Transactional
public class UsersServiceImpl implements UsersService{

	private final UsersReposity UsersReposity;
	
	
	@Autowired
	public UsersServiceImpl(UsersReposity UsersReposity) {
		this.UsersReposity = UsersReposity;
	}

	@Override
	public Iterable<Users> findAll() {
		// TODO Auto-geneUsersd method stub
		return null;
	}

	@Override
	public List<Users> search(Integer id) {
		// TODO Auto-geneUsersd method stub
		return null;
	}

	@Override
	public Users findOne(Integer id) {
		// TODO Auto-geneUsersd method stub
		return null;
	}

	@Override
	public void save(Users t) {
		UsersReposity.save(t);
		
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-geneUsersd method stub
		
	}

}
