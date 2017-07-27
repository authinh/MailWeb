package com.web.tamthanhtinh.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.web.tamthanhtinh.model.Config;


@Repository
public interface ConfigReposity extends CrudRepository<Config, Integer>{

}
