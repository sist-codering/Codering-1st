package com.codering.controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.codering.service.UserService;

import codering.common.common.CommandMap;

@Controller
public class UserController
{
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "UserService")
	private UserService service;

	@RequestMapping(value = "/user_loginSelect")
	public ModelAndView loginSelect(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("LoginSelect");

		return mav;
	}

	@RequestMapping(value = "/user_openSignUp")
	public ModelAndView openSignUp(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("TuteeJoin");

		return mav;
	}

	@RequestMapping(value = "/user_idOverlap")
	@ResponseBody
	public void idOverlap(CommandMap commandMap, HttpServletResponse response) throws IOException
	{
		response.getWriter().print(service.idOverlap(commandMap.getMap()));
	}

	@RequestMapping(value = "/user_nickOverlap")
	@ResponseBody
	public int nickOverlap(CommandMap commandMap)
	{
		return service.nickOverlap(commandMap.getMap());
	}

	@RequestMapping(value = "/user_signUp")
	public ModelAndView sighUp(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("TuteeJoin_done");

		service.insertData(commandMap.getMap());

		return mav;
	}

	

	@RequestMapping(value = "/user_loginForm")
	public ModelAndView loginForm(HttpServletRequest request, CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("");

		if (request.getSession().getAttribute("loginInfo") != null)
		{
			String msg = "이미 로그인된 상태입니다.";
			mav.addObject("msg", msg);
			mav.addObject("location", "user_main");
			mav.setViewName("Alert");
		} else
		{
			mav.setViewName("EmailLogin");
		}

		return mav;
	}

	@RequestMapping(value = "/user_logincheck")
	@ResponseBody
	public void loginCheck(CommandMap commandMap, HttpServletResponse response) throws IOException
	{
		Map<String, Object> map = service.loginInfo(commandMap.getMap());

		if (map == null)
		{
			response.getWriter().print("0");
		} else
		{
			response.getWriter().print("1");
		}
	}
	
	@RequestMapping(value = "/user_login")
	public ModelAndView login(CommandMap commandMap,HttpServletRequest request)
	{
		ModelAndView mav = new ModelAndView("Alert");
		
		Map<String, Object> map = service.loginInfo(commandMap.getMap());
		
		request.getSession().setAttribute("loginInfo", map);
		request.getSession().setMaxInactiveInterval(60 * 60);
		
		mav.addObject("msg", "로그인에 성공하였습니다.");
		mav.addObject("location", "user_main");
		
		return mav;
	}

	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpServletRequest request, CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("Alert");		
		
		request.getSession().removeAttribute("loginInfo");

		mav.addObject("msg", "로그아웃되었습니다.");
		mav.addObject("location", "user_main");

		return mav;
	}

	@RequestMapping(value = "/user_needLogin")
	public ModelAndView needLogin()
	{
		ModelAndView mav = new ModelAndView("Alert");
		
		mav.addObject("msg", "로그인 후 이용해주시기 바랍니다.");
		mav.addObject("location", "user_loginForm");

		return mav;
	}

	@RequestMapping(value = "/tutee_profile")
	public ModelAndView myPageProfile(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("mypage_tutee_profile1");

		Map<String, Object> data = service.userProf(commandMap.getMap());

		mav.addObject("data", data);

		return mav;
	}
	
	@RequestMapping(value = "/testcommandmap")
	public ModelAndView testMapArgumentResolver(CommandMap commandMap) throws Exception
	{
		ModelAndView mv = new ModelAndView("");
		if (commandMap.isEmpty() == false)
		{
			Iterator<Entry<String, Object>> iterator = commandMap.getMap().entrySet().iterator();
			
			Entry<String, Object> entry = null;
			
			while (iterator.hasNext())
			{
				entry = iterator.next();
				log.debug("key : " + entry.getKey() + ", value : " + entry.getValue());
			}
		}
		return mv;
	}
	
	
	@RequestMapping(value="/alarm")
	public ModelAndView alarm(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("done_Alarm");
		
		mav.addObject("alarmList", service.alarmList(commandMap.getMap()));
		
		return mav;
	}
	
	@RequestMapping(value="/alarmReadCheck")
	public ModelAndView alarmReadCheck(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView();
		
		service.alarmReadCheck(commandMap.getMap());
		
		String location = (String) commandMap.get("location");
		
		String valueCat = (String) commandMap.get("valueCat");
		
		String value = (String) commandMap.get("value");
		
		mav.setViewName("redirect:" + location + "?" + valueCat + "=" + value);
		
		return mav;
	}
	
}










