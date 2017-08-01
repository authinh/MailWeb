package com.web.tamthanhtinh.service.serviceinterface;

import java.util.List;

import com.web.tamthanhtinh.model.Albums;
import com.web.tamthanhtinh.model.MusicAlbum;

public interface MusicAlbumService extends IService<MusicAlbum,Integer>{

	public List<MusicAlbum> findByAlbum(Albums album);
}
