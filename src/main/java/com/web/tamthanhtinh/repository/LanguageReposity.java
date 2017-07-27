package com.web.tamthanhtinh.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.web.tamthanhtinh.model.Language;


@Repository
public interface LanguageReposity extends CrudRepository<Language, Integer>{

}
