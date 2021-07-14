package com.erproject.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.erproject.command.UserVO;
import com.erproject.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	
	@RequestMapping("userJoin")
	public String userJoin() {
		
		return "user/userJoin";
		
	}
	
	@RequestMapping("userLogin")
	public String userLogin() {
		
		return "user/userLogin";
	}
	
	
	//중복처라하기
	@ResponseBody
	@PostMapping(value ="/idCheck" , produces="application/json")
	public int idCheck(@RequestBody UserVO vo) {
		
		int result = userService.idCheck(vo);//1이라면 중복임 
		
		System.out.print("중복확인성공");
		return result;
	}
	
	//회원가입
	
	@RequestMapping(value="/joinForm" , method=RequestMethod.POST)
	public String joinForm(UserVO vo , RedirectAttributes RA) {
		
		int result = userService.join(vo);
		
		if(result ==1) {
			RA.addAttribute("msg" , "가입을 축하합니다");
		}else {
			RA.addFlashAttribute("msg" , "가입에 실패하였습니다 다시시도하세용~");
		}
		
		return "redirect:/user/userLogin"; 
		
	}
	
	//로그인
	@RequestMapping(value ="/loginForm" , method=RequestMethod.POST)
	public String loginForm(UserVO vo,  HttpSession session , Model model) {
		
		UserVO userVO = userService.login(vo);
		
		System.out.print("로그인 성공");
		
		if(userVO != null) {
			session.setAttribute("userVO", userVO);
			return "redirect:/";	
			
		} else {
			model.addAttribute("msg" , "아이디비밀번호를 확인하세용");
			return "user/userLogin";
		}
		
		
	}
	
	//마이페이지 
	@RequestMapping("/userMypage")
	public String userMypage(HttpSession session , Model model) {
		
		if(session.getAttribute("userVO") == null) {
			return "redirect:/user/userLogin";
		}
		
		UserVO vo = (UserVO)session.getAttribute("userVO");
		String userId = vo.getUserId();
		
		UserVO userInfo = userService.getInfo(userId);
		model.addAttribute("userInfo" , userInfo);
		
		return "user/userMypage";
		
	}
	
	//마이페이지 수정 
	
	@RequestMapping("/userUpdate")
	public String userUpdate(UserVO vo , RedirectAttributes RA) {
		
		int result = userService.update(vo);
		
		if(result ==1) {
			RA.addFlashAttribute("msg" , "정상수정되었습니다!");
		}else {
			RA.addFlashAttribute("msg", "수정실패되었습니다. 다시 시도해주세요 ");
		}
		return "redirect:/user/userMypage";
	}
	

	@RequestMapping("/userDelete")
	public String userdelete(UserVO vo , RedirectAttributes RA) {
		
		int result = userService.delete(vo);
		
		if(result ==1) {
			
			RA.addFlashAttribute("msg" , "정상수정되었습니다!");
			
		}else {
			RA.addFlashAttribute("msg", "수정실패되었습니다. 다시 시도해주세요 ");
		}
		return "redirect:/user/userMypage";
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
}
