package com.codering.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.codering.service.TuteeProfileService;

import codering.common.common.CommandMap;

@Controller
public class TuteeProfileController
{
	@Autowired
	private TuteeProfileService service;

	// 튜티 프로필
	@RequestMapping(value = "/tutee_profile2")
	public ModelAndView TuteeProfile2(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("mypage_tutee_profile2");

		// commandMap.put("MEMBER_ID", "1");

		Map<String, Object> resultMap = service.selectTuteeProfile(commandMap.getMap());

		mav.addObject("info", resultMap.get("info"));
		mav.addObject("interest", resultMap.get("interest"));

		return mav;
	}

	// 내가 쓴 글
	@RequestMapping(value = "/tutee_writtenComm")
	public ModelAndView TuteewrittenComm(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("mypage_tutee_writtenComm");

		// commandMap.put("MEMBER_ID", "1");

		List<Map<String, Object>> resultMap = service.selectTuteewrittenComm(commandMap.getMap());
		List<Map<String, Object>> resultMap1 = service.selectTuteewrittenCom(commandMap.getMap());

		mav.addObject("writtenComm", resultMap);
		mav.addObject("writtenCom", resultMap1);

		/*
		 * mav.addObject("writtenComm",
		 * service.selectTuteewrittenComm(commandMap.getMap()));
		 * mav.addObject("writtenCom",
		 * service.selectTuteewrittenCom(commandMap.getMap()));
		 */

		return mav;
	}

	/*
	 * @RequestMapping(value="/tutee_writtenCom") public ModelAndView
	 * TuteewrittenCom(CommandMap commandMap) { ModelAndView mav = new
	 * ModelAndView("mypage_tutee_writtenCom");
	 * 
	 * commandMap.put("MEMBER_ID", "1");
	 * 
	 * mav.addObject("writtenCom",
	 * service.selectTuteewrittenCom(commandMap.getMap()));
	 * 
	 * return mav; }
	 */

	// 질문게시판 댓글
	@RequestMapping(value = "/tutee_qtreply")
	public ModelAndView Tuteeqtreply(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("mypage_tutee_writtenReply");

		// commandMap.put("MEMBER_ID", "2");

		List<Map<String, Object>> resultMap = service.selectTuteeqtReply(commandMap.getMap());

		mav.addObject("qtreply", resultMap);

		return mav;
	}

	// 튜터링게시판 댓글
	@RequestMapping(value = "/tutee_tutoringreply")
	public ModelAndView TuteetTuoringreply(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("mypage_tutee_writtenReply");

		// commandMap.put("MEMBER_ID", "2");

		List<Map<String, Object>> resultMap = service.selectTuteetutoringReply(commandMap.getMap());

		mav.addObject("tutoringreply", resultMap);

		return mav;
	}

	// 현재진행중 튜터링 상세정보
	@RequestMapping(value = "/tutee_tuteeingDetail")
	public ModelAndView TuteetuteeingDetail(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("mypage_tuteeIng_detail");

		// commandMap.put("MEMBER_ID", "6");
		// commandMap.put("TUTOR_ID", "1");
		// commandMap.put("TUTORING_TUTOR_ID", "1");

		Map<String, Object> resultMap = service.selectTuteetuteeingDetail(commandMap.getMap());

		mav.addObject("tuteeingDetail", resultMap);

		return mav;
	}

	// 환불페이지
	@RequestMapping(value = "/tuteeing_refund")
	public ModelAndView TuteeingRefund(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("mypage_tuteeIng_refund");

		// 세션이 없는 상태이므로 임의로 값을 넣어 테스트
		commandMap.put("MEMBER_ID", "6");

		commandMap.put("TUTOR_ID", "1");
		commandMap.put("TUTORING_TUTOR_ID", "1");

		Map<String, Object> resultMap = service.selectTuteerefund(commandMap.getMap());

		mav.addObject("refund", resultMap);

		return mav;
	}

	// 예정 튜터링
	@RequestMapping(value = "/tutee_aftertutoringdetail")
	public ModelAndView AfterTutorDetail(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("mypage_tuteeAfter_detail");

		// 세션이 없는 상태이므로 임의로 값을 넣어 테스트
		// commandMap.put("MEMBER_ID", "6");

		Map<String, Object> resultMap = service.selectTuteeAfterTutoringDetail(commandMap.getMap());
		Map<String, Object> resultMap1 = service.selectTuteenicknamecoupon(commandMap.getMap());

		mav.addObject("AfterTutoringDetail", resultMap);
		mav.addObject("nicknamecoupon", resultMap1);

		return mav;
	}

	// 이전 튜터링

	/*
	 * @RequestMapping(value="/tutor_info_updateform") public ModelAndView
	 * tutorProfileUpdate(CommandMap commandMap, HttpSession session) { ModelAndView
	 * mav = new ModelAndView("tutorpage_tutorprofile_revise");
	 * 
	 * // 세션이 없는 상태이므로 임의로 값을 넣어 테스트 commandMap.put("TUTOR_ID", "3");
	 * 
	 * Map<String, Object> resultMap =
	 * service.selectTutorProfile(commandMap.getMap());
	 * 
	 * mav.addObject("info", resultMap.get("info")); mav.addObject("interest",
	 * resultMap.get("interest")); mav.addObject("career", resultMap.get("career"));
	 * mav.addObject("careerCount", resultMap.get("careerCount"));
	 * mav.addObject("category", resultMap.get("category")); mav.addObject("link",
	 * resultMap.get("link"));
	 * 
	 * return mav; }
	 */

	/*
	 * @RequestMapping(value="/tutor_info_deleteCareer_ajax") public void
	 * deleteTutorCareer(CommandMap commandMap) {
	 * service.deleteTutorCareer(commandMap.getMap()); }
	 */

	// 이전 튜터링 상세
	@RequestMapping(value = "/tutee_beforetutoringdetail")
	public ModelAndView BeforeTutoringDetail(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("mypage_tuteeBefore_detail");

		// 세션이 없는 상태이므로 임의로 값을 넣어 테스트
		// commandMap.put("MEMBER_ID", "6");

		Map<String, Object> resultMap = service.selectTuteeBeforeTutoringDetail(commandMap.getMap());
		Map<String, Object> resultMap1 = service.selectTuteenicknamecoupon(commandMap.getMap());

		mav.addObject("BeforeTutoringDetail", resultMap);
		mav.addObject("nicknamecoupon", resultMap1);

		return mav;
	}

	// 예정 튜터링 상세
	@RequestMapping(value = "/tutee_ReservationTutoringDetail")
	public ModelAndView ReservationTutoringDetail(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("mypage_tuteeReservation_detail");

		Map<String, Object> resultMap = service.selectTuteeReservationTutoringDetail(commandMap.getMap());
		Map<String, Object> resultMap1 = service.selectTuteenicknamecoupon(commandMap.getMap());

		mav.addObject("ReservationTutoringDetail", resultMap);
		mav.addObject("nicknamecoupon", resultMap1);

		return mav;
	}


	@RequestMapping(value = "/TutoringDetail")
	public ModelAndView TutoringDetail(CommandMap commandMap)
	{
		ModelAndView mav = new ModelAndView("Tutoring_tutor_done");

		// 세션이 없는 상태이므로 임의로 값을 넣어 테스트
		commandMap.put("TUTORING_TUTOR_ID", "1");
		commandMap.put("TUTOR_ID", "1");

		Map<String, Object> resultMap = service.selectTuteeTutoringDetail(commandMap.getMap());
		Map<String, Object> resultMap1 = service.TutoringDetail_review(commandMap.getMap());

		mav.addObject("TutoringDetail", resultMap);
		mav.addObject("TutoringDetail_review", resultMap1);

		return mav;
	}

}
