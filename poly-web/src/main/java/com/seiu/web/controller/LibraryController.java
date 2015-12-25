package com.seiu.web.controller;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.seiu.web.dao.AlbumDAO;
import com.seiu.web.utils.MenuHelper;

@Controller
public class LibraryController {
	@RequestMapping(value = "/thuvien", method = RequestMethod.GET)
	public String library(ModelMap model,HttpServletRequest request, HttpServletResponse response)
	        throws Exception {				
		MenuHelper.leftMenu(model, "5", "57");
		
		List<Map<String,String>> lstImage = AlbumDAO.getFile("0");
		List<Map<String,String>> lstVideo = AlbumDAO.getFile("1");
		
		model.addAttribute("lstImage", lstImage);
		model.addAttribute("lstVideo", lstVideo);
		return "thuvien";
		
	}
	
}
