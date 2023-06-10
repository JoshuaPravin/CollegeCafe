package com.gjpr.collegecafe.controller;

import java.util.*;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
//import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.gjpr.collegecafe.dao.ICollegeCafeDao;
import com.gjpr.collegecafe.model.Food;

@RestController
public class CollegeCafeController {
	
	@Autowired
	private ICollegeCafeDao projectnamebDao;
	
	private static final Logger LOGGER = LogManager.getLogger(CollegeCafeController.class);
	
	@RequestMapping(value = "/Home",method={RequestMethod.GET, RequestMethod.POST })
	public ModelAndView helloPage(Model model, HttpServletRequest httpRequest, HttpServletResponse response) throws Exception {
		LOGGER.info("Inside Controller for ");
		ModelAndView mav = new ModelAndView();
		
		HttpServletResponse httpResponse = (HttpServletResponse) response;
		Collection<String> headers = httpResponse.getHeaders(HttpHeaders.SET_COOKIE);
		boolean firstHeader = true;
		for (String header : headers) { // there can be multiple Set-Cookie attributes
			if (firstHeader) {
				httpResponse.setHeader(HttpHeaders.SET_COOKIE, String.format("%s; %s", header, "SameSite=None; Secure"));
				firstHeader = false;
				continue;
			}
			httpResponse.addHeader(HttpHeaders.SET_COOKIE, String.format("%s; %s", header, "SameSite=None; Secure"));
		}
		
		mav.setViewName("Hello");
		
		//Get all the food items to be displayed in the menu as three seperate lists for breakfast, lunch and snacks
		List<Food> breakfastList = projectnamebDao.getBreakFastList();
		List<Food> lunchList = projectnamebDao.getLunchList();
		List<Food> snacksList = projectnamebDao.getSnacksList();
		
		
		mav.addObject("breakfastList", breakfastList);
		mav.addObject("lunchList", lunchList);
		mav.addObject("snacksList", snacksList);
		return mav;
	}
	
}
