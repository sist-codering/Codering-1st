package com.codering.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codering.service.RrService;

import codering.common.common.CommandMap;

@Controller
public class RrController
{
	//private static final Log log = LogFactory.getLog(QtboardController.class);

	@Resource(name = "RrService")
	private RrService service;

	@RequestMapping("/recomm_board")
	public void recommBoard(CommandMap commandMap, HttpServletResponse response) throws IOException
	{

		if (service.recommBoardCheck(commandMap.getMap()) >= 3)
		{
			response.getWriter().print("0");
			return;
		}

		service.recommBoard(commandMap.getMap());

		int result = service.recommBoardCount(commandMap.getMap());

		response.getWriter().print(result);

	}

	@RequestMapping("/recomm_comment")
	public void recommComment(CommandMap commandMap, HttpServletResponse response) throws IOException
	{

		if (service.recommCommentCheck(commandMap.getMap()) >= 3)
		{
			response.getWriter().print("0");
			return;
		}

		service.recommComment(commandMap.getMap());

		int result = service.recommCommentCount(commandMap.getMap());

		response.getWriter().print(result);

	}

	@RequestMapping("/report_boardcheck")
	public void reportBoardCheck(CommandMap commandMap, HttpServletResponse response) throws IOException
	{

		if (service.reportBoardCheck(commandMap.getMap()) > 0)
		{
			response.getWriter().print("1");
			return;
		} else
		{
			response.getWriter().print("0");
			return;
		}
	}

	@RequestMapping("/report_board")
	public void reportBoard(CommandMap commandMap, HttpServletResponse response)
	{
		
		service.reportBoard(commandMap.getMap());
	}

	@RequestMapping("/report_commentcheck")
	public void reportCommentCheck(CommandMap commandMap, HttpServletResponse response) throws IOException
	{


		if (service.reportCommentCheck(commandMap.getMap()) > 0)
		{
			response.getWriter().print("1");
			return;
		} else
		{
			response.getWriter().print("0");
			return;
		}
	}

	@RequestMapping("/report_comment")
	public void reportComment(CommandMap commandMap, HttpServletResponse response)
	{
		service.reportComment(commandMap.getMap());
	}

	@RequestMapping("/report_tutorFAQcheck")
	public void reportTutorFAQCheck(CommandMap commandMap, HttpServletResponse response) throws IOException
	{


		if (service.reportTutorCheck(commandMap.getMap()) > 0)
		{
			response.getWriter().print("1");
			return;
		} else
		{
			response.getWriter().print("0");
			return;
		}
	}

	@RequestMapping("/report_tutorFAQ")
	public void reportTutorFAQ(CommandMap commandMap, HttpServletResponse response)
	{
		
		service.reportTutor(commandMap.getMap());
	}

	@RequestMapping("/report_tuteeFAQcheck")
	public void reportTuteeFAQCheck(CommandMap commandMap, HttpServletResponse response) throws IOException
	{


		if (service.reportTuteeCheck(commandMap.getMap()) > 0)
		{
			response.getWriter().print("1");
			return;
		} else
		{
			response.getWriter().print("0");
			return;
		}
	}

	@RequestMapping("/report_tuteeFAQ")
	public void reportTuteeFAQ(CommandMap commandMap, HttpServletResponse response)
	{
		
		service.reportTutee(commandMap.getMap());
	}

	@RequestMapping("/report_ttboardcheck")
	public void reportTtBoardCheck(CommandMap commandMap, HttpServletResponse response) throws IOException
	{


		if (service.reportTBoardCheck(commandMap.getMap()) > 0)
		{
			response.getWriter().print("1");
			return;
		} else
		{
			response.getWriter().print("0");
			return;
		}
	}

	@RequestMapping("/report_ttboard")
	public void reportTtBoard(CommandMap commandMap, HttpServletResponse response)
	{
		
		service.reportTBoard(commandMap.getMap());
	}

	@RequestMapping("/report_ttcommentcheck")
	public void reportTtCommentCheck(CommandMap commandMap, HttpServletResponse response) throws IOException
	{


		if (service.reportTCommentCheck(commandMap.getMap()) > 0)
		{
			response.getWriter().print("1");
			return;
		} else
		{
			response.getWriter().print("0");
			return;
		}
	}

	@RequestMapping("/report_ttcomment")
	public void reportTtComment(CommandMap commandMap, HttpServletResponse response)
	{
		
		service.reportTComment(commandMap.getMap());
	}
}
