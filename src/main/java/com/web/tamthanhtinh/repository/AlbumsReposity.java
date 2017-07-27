package com.web.tamthanhtinh.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.web.tamthanhtinh.model.Albums;


@Transactional(readOnly = true)
public interface AlbumsReposity extends CrudRepository<Albums, Integer>{
	
	
}
