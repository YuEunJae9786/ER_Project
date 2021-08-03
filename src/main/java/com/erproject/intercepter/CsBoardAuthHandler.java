package com.erproject.intercepter;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.erproject.command.UserVO;

public class CsBoardAuthHandler extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		
		UserVO userVO = (UserVO)session.getAttribute("userVO");
		
		if(userVO == null) {
			
			response.setContentType("text/html; charset=utf-8"); 
			PrintWriter out = response.getWriter(); // 화면에 문자열 형태로 전당할 때 사용하는 out객체
			
			out.println("<script>");
			out.println("alert('권한이 없습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			
			return false;
		}
		
		return super.preHandle(request, response, handler);
	}

	
	
}
