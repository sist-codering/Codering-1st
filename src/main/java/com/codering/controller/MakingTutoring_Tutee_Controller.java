package com.codering.controller;

import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.codering.service.MakingTutoring_Tutee_Service;

import codering.common.common.CommandMap;

@Controller
public class MakingTutoring_Tutee_Controller
{
	@Autowired
	private MakingTutoring_Tutee_Service service;
	
	@RequestMapping(value="makingtutee")
	public ModelAndView MakingTutoring_Tutee(CommandMap commandmap)
	{
		ModelAndView mav = new ModelAndView("done_MakingTutee");
		
		Map<String,Object> result = service.selectRegion();
		
		mav.addObject("selectRegion",result.get("selectRegion"));
		mav.addObject("selectInterest",result.get("selectInterest"));
		mav.addObject("selectLevel",result.get("selectLevel"));
		mav.addObject("selectTime",result.get("selectTime"));
		
		return mav;
	}
	
	@RequestMapping(value="inserttutoring_tutee")
	public ModelAndView insertTutoring_Tutee(CommandMap commandmap,HttpServletRequest request)
	{
		ModelAndView mav = new ModelAndView("done_matching");
		
		Map<String, Object> ivMap = (Map<String, Object>) request.getSession().getAttribute("iv");
		
		service.insertTutoring_Tutee(ivMap);
		
		return mav;
	}
	
	@RequestMapping(value="matchingtutor1")
	public ModelAndView matchingTutor1(CommandMap commandmap , HttpServletRequest request)
	{
		ModelAndView mav = new ModelAndView("done_Matching1");
		
		request.getSession().setAttribute("iv", commandmap.getMap());
		
		Map<String,Object> result = service.selectName(commandmap.getMap());
		
			  
		 if (commandmap.isEmpty() == false)
	      {
	         Iterator<Entry<String, Object>> iterator = commandmap.getMap().entrySet().iterator();
	         
	         Entry<String, Object> entry = null;
	         
	         while (iterator.hasNext())
	         {
	            entry = iterator.next();
	            System.out.println("key : " + entry.getKey() + ", value : " + entry.getValue());
	         }
	      }	  
			  
			  mav.addObject("selectRegionName",result.get("selectRegionName"));
			  mav.addObject("selectTimeName",result.get("selectTimeName"));
			  mav.addObject("selectLangLvName",result.get("selectLangLvName"));
			  mav.addObject("iv",commandmap.getMap());
		 
			  return mav;
	}
	
	@RequestMapping(value="/matchingtutor2")
	public ModelAndView matchingTutor2(CommandMap commandmap , HttpServletRequest request)
	{
		ModelAndView mav = new ModelAndView("done_Matching2");
		
		Map<String, Object> ivMap = (Map<String, Object>) request.getSession().getAttribute("iv");
		
		mav.addObject(ivMap);
		
		
		
		return mav;
	}
	
	@RequestMapping(value="/matchingtutor3")
	public ModelAndView matchingTutor3(CommandMap commandmap , HttpServletRequest request)
	{
		ModelAndView mav = new ModelAndView("done_Matching3");
		
		Map<String, Object> ivMap = (Map<String, Object>) request.getSession().getAttribute("iv");
		
		mav.addObject(ivMap);
		
		return mav;
	}
	
	@RequestMapping(value="/matchingtutor4")
	public ModelAndView matchingTutor4(CommandMap commandmap , HttpServletRequest request)
	{
		ModelAndView mav = new ModelAndView("done_Matching4");
		
		Map<String, Object> ivMap = (Map<String, Object>) request.getSession().getAttribute("iv");
		
		mav.addObject(commandmap.getMap());
		
		return mav;
	}
	
	@RequestMapping(value="/done_previewtutee")
	public ModelAndView previewTutee(CommandMap commandmap , HttpServletRequest request)
	{
		ModelAndView mav = new ModelAndView("done_PreViewTutee");
		
		Map<String, Object> ivMap = (Map<String, Object>) request.getSession().getAttribute("iv");
		
		mav.addObject(ivMap);
		
		return mav;
		
	}
	
	@RequestMapping(value="/done_matching")
	public ModelAndView done_Matching(CommandMap commandmap , HttpServletRequest request)
	{
		ModelAndView mav = new ModelAndView("done_TuteeMakingDone");
		
		return mav;
	}
	
	@RequestMapping(value="/ajax_searchTutor")
	public ModelAndView ajaxSearchTutor(CommandMap commandmap)
	{
		ModelAndView mav = new ModelAndView("ajax_searchTutor");
		
		 if (commandmap.isEmpty() == false)
	      {
	         Iterator<Entry<String, Object>> iterator = commandmap.getMap().entrySet().iterator();
	         
	         Entry<String, Object> entry = null;
	         
	         while (iterator.hasNext())
	         {
	            entry = iterator.next();
	            System.out.println("key : " + entry.getKey() + ", value : " + entry.getValue());
	         }
	      }
		
		Map<String,Object> result = service.searchTutor(commandmap.getMap());
		
		mav.addObject("selectRecommandTutor",result.get("selectRecommandTutor"));
		
		return mav;
	}
}
