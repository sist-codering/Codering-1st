package com.codering.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginCheckInterceptor extends HandlerInterceptorAdapter
{
	private static final Log log = LogFactory.getLog(LoginCheckInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception
	{
		try
		{			
			//로그인 된 상태가 아니라면 로그인 페이지로
			if(request.getSession().getAttribute("loginInfo") == null)
			{
				log.debug("로그인되어있지 않은 사용자의 요청");
				response.sendRedirect(request.getContextPath() + "/user_needLogin");
				return false;
			}
			else
			{		
				// 로그인되어있다면 정상진행
				return true;
			}
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return super.preHandle(request, response, handler);
	}
	
}
