package com.codering.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.codering.service.MainService;

import codering.common.common.CommandMap;

@Controller
public class MainController
{
	@Autowired
	private MainService service;
	
	@RequestMapping(value="/user_main")
	public ModelAndView selectTutoring(CommandMap commandmap)
	{
		ModelAndView mav = new ModelAndView("Main");
		
		if(commandmap.get("loginInfo") == null)
		{
			commandmap.put("MEMBER_ID", '1');
		}
		
		Map<String,Object> result = service.selectTutoring(commandmap.getMap());
		
		mav.addObject("popularTutoring",result.get("popularTutoring"));
		mav.addObject("newTutoring",result.get("newTutoring"));
		mav.addObject("selectTutorCount",result.get("selectTutorCount"));
		mav.addObject("selectTuteeCount",result.get("selectTuteeCount"));
		
		return mav;
	}
}
