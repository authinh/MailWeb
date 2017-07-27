package com.web.tamthanhtinh.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.web.tamthanhtinh.model.Person;


@Repository
public interface PersonReposity extends CrudRepository<Person, Integer>{

}
