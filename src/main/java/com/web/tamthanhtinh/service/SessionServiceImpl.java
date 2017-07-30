package com.web.tamthanhtinh.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;


import com.web.tamthanhtinh.model.Sessions;
import com.web.tamthanhtinh.repository.SessionRepository;
import com.web.tamthanhtinh.service.serviceinterface.SessionService;



@Service("SessionServiceImpl")
@Transactional
public class SessionServiceImpl implements SessionService {

	 	@Autowired
	    private final SessionRepository sessionRepository;

	 	
	   
		public SessionServiceImpl(SessionRepository sessionRepository) {
			
			this.sessionRepository = sessionRepository;
		}

		@Override
		public Iterable<Sessions> findAll() {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public List<Sessions> search(String q) {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public Sessions findOne(String id) {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public void save(Sessions sessions) {
			// TODO Auto-generated method stub
			sessionRepository.save(sessions);
		}

		@Override
		public void delete(String id) {
			// TODO Auto-generated method stub
			
		}

		


}
