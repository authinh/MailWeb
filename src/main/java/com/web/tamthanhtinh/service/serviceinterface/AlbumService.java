package com.web.tamthanhtinh.service.serviceinterface;

import com.web.tamthanhtinh.model.Albums;

public interface AlbumService extends IService<Albums, Integer> {

	Iterable<Albums> SelectObjectByID(Integer id);
}
