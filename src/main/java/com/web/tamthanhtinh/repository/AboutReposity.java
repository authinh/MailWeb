package com.web.tamthanhtinh.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.web.tamthanhtinh.model.About;


@Repository
public interface AboutReposity extends CrudRepository<About, Integer>{

}
