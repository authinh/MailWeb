package com.web.tamthanhtinh.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.web.tamthanhtinh.model.Rate;


@Repository
public interface RateReposity extends CrudRepository<Rate, Integer>{

}
