package com.codering.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.codering.service.TutorInvitedService;

import codering.common.common.CommandMap;

@Controller
public class TutorInvitedController {
	private static final Logger log = LoggerFactory.getLogger(TutorInvitedController.class);
	
	// 서비스 DI
	@Resource(name = "tutorInvitedService")
	private TutorInvitedService tutorInvitedService;

	// 튜터의 초대받은 튜터링 목록
	@RequestMapping(value = "/tutor_InvitedList")
	public ModelAndView tutorInvitedList(HttpServletRequest request, CommandMap commandMap) throws Exception {
		Map<String, Object> map = commandMap.getMap();
		log.info("commandMap : " + map);
		
		ModelAndView mav = new ModelAndView("tutorpage_Maching_invited");

		List<Map<String, Object>> list = tutorInvitedService.selectTutorInvitedList(request, map);

		mav.addObject("list", list);

		return mav;
	}

	// 튜터의 초대수락/초대거절
	@RequestMapping(value = "/tutor_InvitedStatus")
	public String tutorInvitedStatus(HttpServletRequest request, CommandMap commandMap, RedirectAttributes redirectAttributes) throws Exception {
		Map<String, Object> map = commandMap.getMap();
		log.info("commandMap : " + map);

		// String INVITED_ID2 = request.getParameter("INVITED_ID");
		String INVITED_ID = (String) map.get("INVITED_ID");
		String MACH_LV_ID = (String) map.get("MACH_LV_ID");

		tutorInvitedService.updateTutorInvitedStatus(request, map);

		String viewName = "";
		if ("5".equals(MACH_LV_ID)) {
			redirectAttributes.addAttribute("INVITED_ID", INVITED_ID);
			viewName = "redirect:/tutor_InvitedBoard";
		} else {
			viewName = "redirect:/tutor_InvitedList";
		}

		return viewName;
	}

	// 튜터와 튜티장의 초대 게시판 (튜터의 초대수락 후 페이지 전환되었을 때)
	@RequestMapping(value = "/tutor_InvitedBoard")
	public ModelAndView tutorInvitedBoard(HttpServletRequest request, CommandMap commandMap) throws Exception {
		Map<String, Object> map = commandMap.getMap();

		ModelAndView mav = new ModelAndView("tutorpage_Matching_main_tab_invitedTutor_done");

		// 상대방의 메시지 읽음 처리
		tutorInvitedService.updateTutorInvitedBoardRead(request, map);

		List<Map<String, Object>> dialList = tutorInvitedService.selectTutorInvitedBoard(request, map);
		String tuteeName = tutorInvitedService.selectTuteeName(request, map);

		mav.addObject("LIST", dialList);
		mav.addObject("TUTEENAME", tuteeName);
		mav.addObject("INVITED_ID", commandMap.getMap().get("INVITED_ID"));
		mav.addObject("TAB", "1");
		
		return mav;
	}

	// 튜터의 메시지 초대 게시판에 등록
	@RequestMapping(value = "/tutor_InvitedBoardMsg")
	public String tutorInvitedBoardMsg(HttpServletRequest request, CommandMap commandMap, RedirectAttributes redirectAttributes) throws Exception {
		Map<String, Object> map = commandMap.getMap();

		tutorInvitedService.insertTutorInvitedBoardMsg(request, map);

		String INVITED_ID = (String) map.get("INVITED_ID");
		redirectAttributes.addAttribute("INVITED_ID", INVITED_ID);
		String viewName = "redirect:/tutor_InvitedBoard";

		return viewName;
	}

	// 튜터의 초대받은 튜터링 수락 후 확정
	@RequestMapping(value = "/tutor_InvitedBoardFix")
	public String tutorInvitedBoardFix(HttpServletRequest request, CommandMap commandMap, RedirectAttributes redirectAttributes) throws Exception {
		Map<String, Object> map = commandMap.getMap();

		tutorInvitedService.updateTutorInvitedBoardFix(request, map);

		String INVITED_ID = (String) map.get("INVITED_ID");
		redirectAttributes.addAttribute("INVITED_ID", INVITED_ID);
		String viewName = "redirect:/tutor_InvitedBoard";

		return viewName;
	}

	// 튜터의 초대받은 튜터링 상세정보 조회
	@RequestMapping(value = "/tutor_InvitedTutoringDetail")
	public ModelAndView tutorInvitedTutoringDetail(HttpServletRequest request, CommandMap commandMap) throws Exception {
		Map<String, Object> map = commandMap.getMap();

		ModelAndView mav = new ModelAndView("tutorpage_Matching_main_tab_invitedTutor_done");

		Map<String, Object> detilMap = tutorInvitedService.selectTutorInvitedTutoringDetail(request, map);

		mav.addObject("MAP", detilMap);
		mav.addObject("INVITED_ID", commandMap.getMap().get("INVITED_ID"));
		mav.addObject("MACH_LV_ID", commandMap.getMap().get("MACH_LV_ID"));
		mav.addObject("TAB", "2");
		
		return mav;
	}
}