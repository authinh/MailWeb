package com.web.tamthanhtinh.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.web.tamthanhtinh.model.Users;


@Repository
public interface UsersReposity extends CrudRepository<Users, Integer>{

}
