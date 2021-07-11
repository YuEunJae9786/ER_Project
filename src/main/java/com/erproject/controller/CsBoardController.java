package com.erproject.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.erproject.command.FaqVO;
import com.erproject.command.NoticeVO;
import com.erproject.csboard.service.CsBoardService;
import com.erproject.util.Criteria;
import com.erproject.util.OrderUtil;
import com.erproject.util.PageVO;

@Controller
@RequestMapping("/csBoard")
public class CsBoardController {
	
	@Autowired
	@Qualifier("csBoardService")
	private CsBoardService csBoardService;

//	게시판 리스트
	@RequestMapping("/csBoardList")
	public void csBoard(OrderUtil orderUtil,
						Criteria cri,
						Model model) {
		
//		노티스 게시판 페이징 만들기
		PageVO noticePage = new PageVO(cri, csBoardService.getNoticeTotal(orderUtil));
//		faq 게시판 페이징 만들기
		PageVO faqPage = new PageVO(cri, csBoardService.getFaqTotal(orderUtil));
		
//		노티스 게시판 페이징 전달
		model.addAttribute("noticePage", noticePage);
//		faq 게시판 페이징 전달
		model.addAttribute("faqPage", faqPage);
		
//		노티스 게시판 글 불러오기
		model.addAttribute("noticeList", csBoardService.noticeGetList(orderUtil, cri));
//		faq 게시판 글 불러오기
		model.addAttribute("faqList", csBoardService.faqGetList(orderUtil, cri));
		
//		정렬 순서 기억
		model.addAttribute("orderUtil", orderUtil);
		
	}
	
	@RequestMapping("/qnaRegist")
	public void qnaRegist() {
		
	}
	
//	notice 게시판 글 등록
	@RequestMapping("/noticeRegist")
	public String noticeRegist(NoticeVO vo, 
							   RedirectAttributes RA) {
		
		System.out.println(vo.toString());
		
		int result = csBoardService.noticeRegist(vo);
		
		if( result == 1) {
			RA.addFlashAttribute("msg", "글이 등록 되었습니다.");
		} else {
			RA.addFlashAttribute("msg", "글 등록에 실패했습니다. 다시 시도하세요");
		}
		
		return "redirect:/csBoard/csBoardList";
	}
	
//	FAQ 게시판 글 등록
	@RequestMapping("/faqRegist")
	public String faqRegist(FaqVO vo,
							RedirectAttributes RA) {
		
		System.out.println(vo.toString());
		
		int result = csBoardService.faqRegist(vo);
		
		if( result == 1) {
			RA.addFlashAttribute("msg", "글이 등록 되었습니다.");
		} else {
			RA.addFlashAttribute("msg", "글 등록에 실패했습니다. 다시 시도하세요");
		}
		
		return "redirect:/csBoard/csBoardList";
	}
	
}
