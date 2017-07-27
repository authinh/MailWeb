package com.web.tamthanhtinh.configuration;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
import com.web.tamthanhtinh.configuration.ViewConfiguration;
import com.web.tamthanhtinh.configuration.JPAConfiguration;

public class WebInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] { ViewConfiguration.class, JPAConfiguration.class, FilterConfiguration.class };
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };
	}

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] { };
	}
	

}
