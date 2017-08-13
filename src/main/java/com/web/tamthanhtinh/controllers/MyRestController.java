package com.web.tamthanhtinh.controllers;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.web.tamthanhtinh.model.Albums;
import com.web.tamthanhtinh.model.MusicAlbum;
import com.web.tamthanhtinh.model.Musics;
import com.web.tamthanhtinh.service.serviceinterface.MusicAlbumService;

@RestController
@RequestMapping("/api") 
public class MyRestController {
	
	static public final Logger logger = LoggerFactory.getLogger(MyRestController.class);
	
	@Autowired
	MusicAlbumService musicAlbumService;
	
	@RequestMapping(value = "/listaudio", method = RequestMethod.GET)
	public String player(ModelMap model, @RequestParam("albumID") String albumID)  {
		String url = "error";
		
		try {
			int id = Integer.parseInt(albumID);
			Albums album = new Albums();
			album.setId(id);
			Iterable<MusicAlbum> listMusicAlbum = musicAlbumService.findByAlbum(album);
			StringBuffer listMusic = new StringBuffer();
			listMusic.append("[");
			int size=1;
			for (MusicAlbum musicAlbum : listMusicAlbum) {
				String music =  "{"+
                "\"track\": "+size+", "+
                "\"name\": \""+musicAlbum.getMusic().getTitle()+"\","+
                "\"length\": \"3:30\","+//musicAlbum.getMusic().getSize()+"\","+
                "\"file\": \""+musicAlbum.getMusic().getLink()+"\""+
            "}";
				listMusic.append(","+music);
				size++;
			}
			listMusic.deleteCharAt(1);
			listMusic.append("]");	
			url = listMusic.toString();
			logger.debug("listMusic.size():"+listMusic);
			

		} catch (NumberFormatException e) {
			model.addAttribute("error", "NumberFormatException");
			url = "error";
		} catch (Exception e) {
			model.addAttribute("error", "error form alumid:" +albumID);
			url = "error";
		} finally {
			return url;
		}
	}
}
