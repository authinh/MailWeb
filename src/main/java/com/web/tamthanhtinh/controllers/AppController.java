package com.web.tamthanhtinh.controllers;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.web.tamthanhtinh.engine.FacadeEngine;

@Controller
public class AppController {

	static public final Logger logger = LoggerFactory.getLogger(AppController.class);

	@RequestMapping(value="/")
	public String homePage(Model model) {
		
		return "webpage";
	}
}
