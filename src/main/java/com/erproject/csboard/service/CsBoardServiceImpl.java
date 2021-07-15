package com.erproject.csboard.service;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.erproject.command.APP_CONSTANT;
import com.erproject.command.FaqImageVO;
import com.erproject.command.FaqVO;
import com.erproject.command.NoticeImageVO;
import com.erproject.command.NoticeVO;
import com.erproject.command.QnaVO;
import com.erproject.csboard.mapper.CsBoardMapper;
import com.erproject.util.Criteria;
import com.erproject.util.OrderUtil;

@Service("csBoardService")
public class CsBoardServiceImpl implements CsBoardService{

	@Autowired
	private CsBoardMapper csBoardMapper;
	
	@Override
	public int noticeRegist(NoticeVO vo) {
		return csBoardMapper.noticeRegist(vo);
	}
	
	@Override
	public int faqRegist(FaqVO vo) {
		return csBoardMapper.faqRegist(vo);
	}
	
	@Override
	public int qnaRegist(QnaVO vo) {
		return csBoardMapper.qnaRegist(vo);
	}
	
	@Override
	public int getFaqTotal(OrderUtil orderUtil) {
		return csBoardMapper.getFaqTotal(orderUtil);
	}
	
	@Override
	public int getNoticeTotal(OrderUtil orderUtil) {
		return csBoardMapper.getNoticeTotal(orderUtil);
	}
	
	@Override
	public int getQnaTotal(OrderUtil orderUtil) {
		return csBoardMapper.getQnaTotal(orderUtil);
	}
	
	@Override
	public List<NoticeVO> noticeGetList(OrderUtil orderUtil, Criteria cri) {
		
		Map<String, String> map = new HashMap<>();
		
		map.put("searchType", orderUtil.getSearchType());
		map.put("searchName", orderUtil.getSearchName());
		map.put("orderType", orderUtil.getOrderType());
		
		map.put("pageNum", Integer.toString(cri.getPageNum()));
		map.put("amount", Integer.toString(cri.getAmount()));
		
		return csBoardMapper.noticeGetList(map);
	}
	
	@Override
	public List<FaqVO> faqGetList(OrderUtil orderUtil, Criteria cri) {
		
		Map<String, String> map = new HashMap<>();
		
		map.put("searchType", orderUtil.getSearchType());
		map.put("searchName", orderUtil.getSearchName());
		map.put("orderType", orderUtil.getOrderType());
		map.put("listOrder", orderUtil.getListOrder());
		
		map.put("pageNum", Integer.toString(cri.getPageNum()));
		map.put("amount", Integer.toString(cri.getAmount()));

		return csBoardMapper.faqGetList(map);
	}
	
	@Override
	public List<QnaVO> qnaGetList(OrderUtil orderUtil, Criteria cri) {
		
		Map<String, String> map = new HashMap<>();
		
		map.put("searchType", orderUtil.getSearchType());
		map.put("searchName", orderUtil.getSearchName());
		map.put("orderType", orderUtil.getOrderType());
		map.put("listOrder", orderUtil.getListOrder());
		
		map.put("pageNum", Integer.toString(cri.getPageNum()));
		map.put("amount", Integer.toString(cri.getAmount()));
		
		return csBoardMapper.qnaGetList(map);
	}
	
	@Override
	public int countView(String whereboard, int bno) {
		
		int result = 0;
		
		if(whereboard.equals("Notice")) {
			result = csBoardMapper.noticeView(bno);
		} else if(whereboard.equals("FAQ")) {
			result = csBoardMapper.faqView(bno);
		} else if(whereboard.equals("QNA")) {
			result = csBoardMapper.qnaView(bno);
		}
		
		return result;
		
	}
	
	@Override
	public int delete(String whereboard, int bno) {
		
		int result = 0;
		
		if(whereboard.equals("Notice")) {
			result = csBoardMapper.noticeDelete(bno);
		} else if(whereboard.equals("FAQ")) {
			result = csBoardMapper.faqDelete(bno);
		} else if(whereboard.equals("QNA")) {
			result = csBoardMapper.qnaDelete(bno);
		}
		
		return result;
	}
	
	@Override
	public void imageUpload(String whereboard, MultipartFile file) {
		
		try {
			
			File folder = new File(APP_CONSTANT.UPLOAD_PATH + "//" + whereboard); // 폴더 생성위치
			
			if(!folder.exists()) { // 해당 경로에 폴더가 없다면
				folder.mkdir(); // 폴더 생성
			}
			
			// 파일명
			String fileRealName = file.getOriginalFilename();
			// 사이즈
			Long size = file.getSize();
			
			// 저장된 전체경로
			String uploadPath = folder.getPath(); // 폴더명을 포함한 경로
			
			// 확장자
			String fileExtention = fileRealName.substring( fileRealName.lastIndexOf(".") , fileRealName.length() );
			UUID uuid = UUID.randomUUID();
			String uuids = uuid.toString().replaceAll("-", "");
			
			// 업로드 파일명
			String fileName = uuids + fileExtention;
			
			File saveFile = new File(uploadPath + "\\" + fileName);
			file.transferTo(saveFile); // 파일쓰기
			
			if(whereboard.equals("Notice")) {
				
				NoticeImageVO vo = new NoticeImageVO();
				vo.setNotice_No(csBoardMapper.getNoticeCurrent() );
				vo.setNi_Path(uploadPath);
				vo.setNi_Name(fileName);
				
				csBoardMapper.noticeImageUpload(vo);
			} else if(whereboard.equals("FAQ")) {
				
				FaqImageVO vo = new FaqImageVO();
				vo.setFaq_No(csBoardMapper.getFaqCurrent() );
				vo.setFi_Path(uploadPath);
				vo.setFi_Name(fileName);
				
				csBoardMapper.faqImageUpload(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
}
