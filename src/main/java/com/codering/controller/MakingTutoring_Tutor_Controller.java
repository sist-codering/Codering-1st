package com.codering.controller;

import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.codering.service.MakingTutoring_Tutor_Service;

import codering.common.common.CommandMap;

@Controller
public class MakingTutoring_Tutor_Controller
{
	@Autowired
	private MakingTutoring_Tutor_Service service;
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/inserttutoring_tutor")
	public ModelAndView InsertTutoring_Tutor(CommandMap commandmap, HttpServletRequest request)
	{
		ModelAndView mav = new ModelAndView("done_TutorMakingDone");
		
		
		Map<String, Object> ivMap = (Map<String, Object>) request.getSession().getAttribute("iv");
		
		if (ivMap.isEmpty() == false)
	      {
	         Iterator<Entry<String, Object>> iterator = ivMap.entrySet().iterator();
	         
	         Entry<String, Object> entry = null;
	         
	         while (iterator.hasNext())
	         {
	            entry = iterator.next();
	            System.out.println("key : " + entry.getKey() + ", value : " + entry.getValue());
	         }
	      }
		
		
		//commandmap.put("TUTOR_ID","1");
		
		service.insertTutoring_Tutor(ivMap);
		
		Map<String,Object> result = service.selectTutorName(commandmap.getMap());
		
		mav.addObject("selectTutorName",result.get("selectTutorName"));
		
		request.getSession().removeAttribute("iv");
		
		return mav;
	}
	
	@RequestMapping(value="/selecttutor_qna")
	public ModelAndView selectTutorQNA(CommandMap commandmap)
	{
		ModelAndView mav = new ModelAndView(""/*모달을 따로 띄워줘야하나....*/);
				
		//commandmap.put("TUTOR_ID","1");
		
		Map<String, Object> result= service.selectTutorQNA(commandmap.getMap());
		
	    mav.addObject("selectTutorQNA",result.get("selectTutorQNA"));
		
		return mav;		
	    
	}
	
	@RequestMapping(value="/makingtutor")
	public ModelAndView MakingTutoring_Tutor(CommandMap commandmap)
	{
		ModelAndView mav = new ModelAndView("done_MakingTutor");
		
		Map<String,Object> result = service.selectChoice();
		
		mav.addObject("selectRegion",result.get("selectRegion"));
		mav.addObject("selectInterest",result.get("selectInterest"));
		mav.addObject("selectLevel",result.get("selectLevel"));
		
		return mav;
	}
	
	@RequestMapping(value="/previewtutoring_tutor")
	public ModelAndView PreviewTutoring_tutor(CommandMap commandmap, HttpServletRequest request)
	{
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
		
		
		ModelAndView mav = new ModelAndView("done_PreViewTutor");
		
		Map<String,Object> result = service.selectName(commandmap.getMap());
		
		request.getSession().setAttribute("iv", commandmap.getMap());
		
		//mav.addObject("iv",commandmap.getMap());
		mav.addObject("selectWeekName",result.get("selectWeekName"));	
		mav.addObject("selectLangLvName",result.get("selectLangLvName"));
		mav.addObject("selectTutorReview",result.get("selectTutorReview"));
		mav.addObject("THUMBNAIL_PATH", commandmap.get("THUMBNAIL_PATH"));
		mav.addObject("FAQ",result.get("FAQ"));
		mav.addObject("regInfo",result.get("regInfo"));
		mav.addObject("selectTutorInfo", result.get("selectTutorInfo"));

		
		return mav;

	}
	
	@RequestMapping(value="/ajax_reg")
	public ModelAndView selectRegCount (CommandMap commandmap)
	{
		ModelAndView mav = new ModelAndView("ajax");
		
		int regCount = service.selectRegCount(commandmap.getMap());
		
		mav.addObject("result",regCount);
		
		return mav;
			
	}
	
	@RequestMapping(value="/done_tutormakingdone")
	public ModelAndView done_TutorDone(CommandMap commandmap)
	{
		ModelAndView mav = new ModelAndView("done_TutorMakingDone");
		
		return mav;
	}
	
	
	
	
}


