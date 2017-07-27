package com.web.tamthanhtinh.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.web.tamthanhtinh.model.Musics;


@Repository
public interface MusicsReposity extends CrudRepository<Musics, Integer>{

}
