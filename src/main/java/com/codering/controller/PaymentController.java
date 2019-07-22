package com.codering.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.codering.service.PaymentService;

import codering.common.common.CommandMap;

@Controller
public class PaymentController
{
	@Autowired
	private PaymentService service;
	
	/*
	 * @RequestMapping(value="") public ModelAndView selectTuteeAuth(CommandMap
	 * commandmap) { ModelAndView mav = null;
	 * 
	 * int auth = service.selectTuteeAuth(commandmap.getMap());
	 * 
	 * if(auth > 0) { mav = new ModelAndView("d"); } else if(auth <= 0) { mav = new
	 * ModelAndView("awda"); }
	 * 
	 * return mav; }
	 */
	
	/*
	 * @RequestMapping(value="") public ModelAndView preview(CommandMap commandmap)
	 * { ModelAndView mav = new ModelAndView();
	 * 
	 * Map<String,Object> result = service.selectTutoringTutor(commandmap.getMap());
	 * 
	 * mav.addObject("selectTutoringTutor",result.get("selectTutoringTutor"));
	 * 
	 * return mav; }
	 */
	
	/*
	 * @RequestMapping(value="") public ModelAndView payment(CommandMap commandmap)
	 * { ModelAndView mav = new ModelAndView();
	 * 
	 * Map<String,Object> result = service.selectTutoringTutor(commandmap.getMap());
	 * int couCount = service.selectCouponCount(commandmap.getMap());
	 * 
	 * mav.addObject("selectTutoringTutor",result.get("selectTutoringTutor"));
	 * 
	 * return mav; }
	 */
	@RequestMapping(value="inserttutoring_enroll")
	public ModelAndView insertTutoringEnroll(CommandMap commandmap)
	{
		ModelAndView mav = new ModelAndView();
		
		service.insertTutoringEnroll(commandmap.getMap());
		
		return mav;
	}
	
	
}
