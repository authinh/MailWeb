package com.web.tamthanhtinh.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.web.tamthanhtinh.model.Albums;
import com.web.tamthanhtinh.model.MusicAlbum;


@Repository
public interface MusicAlbumReposity extends CrudRepository<MusicAlbum, Integer>{

	public List<MusicAlbum> findByAlbum(Albums album);
}
