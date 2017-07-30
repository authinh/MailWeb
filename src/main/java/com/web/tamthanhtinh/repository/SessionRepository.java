package com.web.tamthanhtinh.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.web.tamthanhtinh.model.Sessions;



@Repository
public interface SessionRepository extends CrudRepository<Sessions, String>{
	
}
