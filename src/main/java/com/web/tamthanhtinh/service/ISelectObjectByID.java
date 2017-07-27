package com.web.tamthanhtinh.service;

public interface ISelectObjectByID<T,K> {

	Iterable<T> SelectObjectByID(K id);
}
