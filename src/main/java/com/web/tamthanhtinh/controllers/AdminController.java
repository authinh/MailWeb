package com.web.tamthanhtinh.controllers;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.tamthanhtinh.engine.FacadeEngine;
import com.web.tamthanhtinh.model.Albums;
import com.web.tamthanhtinh.model.Category;
import com.web.tamthanhtinh.model.Musics;
import com.web.tamthanhtinh.model.Person;
import com.web.tamthanhtinh.model.Sessions;
import com.web.tamthanhtinh.service.PersonServiceImpl;
import com.web.tamthanhtinh.service.serviceinterface.AlbumService;
import com.web.tamthanhtinh.service.serviceinterface.CategoryService;
import com.web.tamthanhtinh.service.serviceinterface.MusicsService;
import com.web.tamthanhtinh.service.serviceinterface.SessionService;

@Controller
@RequestMapping("/admin") 
public class AdminController {
	static public final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired(required=true)
	private SessionService sessionServiceAd;
	@Autowired(required=true)
	private CategoryService categoryServiseAd;
	@Autowired(required=true)
	private AlbumService albumServiceAd;
	@Autowired
	private MusicsService MusicService;
	
//	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(ModelMap model){
		getCommonJSP(model);
		model.addAttribute("bashboard",null);
		model.addAttribute("categorytable",FacadeEngine.getHtmlbyURL("admin/categorytable"));
		return "admin/adminpage";
	}
	/*
	 * jsp to get compoment
	 */
	@RequestMapping(value="/categorytable",method = RequestMethod.GET)
	public String categoryTable(ModelMap model){
		model.addAttribute("categorys",categoryServiseAd.findAll());
		model.addAttribute("showlist",FacadeEngine.getHtmlbyURL("admin/listcategory"));
		return "admin/categorytable";
	}
	
	@RequestMapping(value="/listcategory",method = RequestMethod.GET)
	public String listcategory(ModelMap model){
		List<String> headers = new ArrayList<String>();
		headers.add("#");headers.add("Title");headers.add("Tag");	
		
		model.addAttribute("headers",headers);
		model.addAttribute("categorys",categoryServiseAd.findAll());
		return "admin/showlist";
	}
	/*
	 * common jsp to get compoment
	 */
	
	@RequestMapping(value = "/menubar", method = RequestMethod.GET)
	public String header(ModelMap model) {

		//logger.debug(categoryServiseAdAd.findAll().toString());
		//model.addAttribute("categorys", categoryServiseAd.findAll());

		return "admin/menubar";

	}

	@RequestMapping(value = "/footer", method = RequestMethod.GET)
	public String footer(ModelMap model) {

		return "admin/footer";

	}

	@RequestMapping(value = "/head", method = RequestMethod.GET)
	public String head(ModelMap model) {

		return "admin/head";

	}
	
	public void getCommonJSP(ModelMap model) {
		model.addAttribute("gethead",FacadeEngine.getHtmlbyURL("admin/head"));
		model.addAttribute("getmenubar", (String) FacadeEngine.getHtmlbyURL("admin/menubar"));
		model.addAttribute("getfooter", (String) FacadeEngine.getHtmlbyURL("admin/footer"));
		
		
	}
	
	@RequestMapping(value = "/countviews", method = RequestMethod.GET)
	public String countviewrs(@RequestParam("sessionCurrent") String sessionCurrent, @RequestParam("URL") String URL) {
		if (sessionCurrent != null) {
			Sessions sessions = new Sessions();
			logger.debug("Redirect URL: " + URL);
			System.out.println("Redirect URL: " + URL);
			sessions.setId(sessionCurrent);
			sessions.setOnlTime(new Date());
			sessions.setUserID(null);
			// save session into database. this line comment for issue
			//sessionService.save(sessions);

			return "redirect:" + URL;

		}
		return "homepage";
	}
}
