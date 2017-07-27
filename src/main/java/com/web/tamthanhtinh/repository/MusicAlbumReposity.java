package com.web.tamthanhtinh.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.web.tamthanhtinh.model.MusicAlbum;


@Repository
public interface MusicAlbumReposity extends CrudRepository<MusicAlbum, Integer>{

}
