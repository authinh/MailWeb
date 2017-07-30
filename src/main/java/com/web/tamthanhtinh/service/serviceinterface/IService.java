
package com.web.tamthanhtinh.service.serviceinterface;

import java.util.List;

import com.web.tamthanhtinh.model.Sessions;


public interface IService<T,K> {
	
	Iterable<T> findAll();

    List<T> search(K id);

    T findOne(K id);

    void save(T t);

    void delete(K id);
    
    
}
