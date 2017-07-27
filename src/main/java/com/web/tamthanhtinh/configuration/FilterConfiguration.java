package com.web.tamthanhtinh.configuration;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import com.web.tamthanhtinh.interceptor.LoggingInterceptor;

@Configuration
@EnableWebMvc
@EnableTransactionManagement
@ComponentScan("com.web.tamthanhtinh.interceptor")
public class FilterConfiguration extends WebMvcConfigurerAdapter{	
	
	public void addInterceptors(InterceptorRegistry registry) {
	    registry.addInterceptor(new LoggingInterceptor());
	    
	} 

}
