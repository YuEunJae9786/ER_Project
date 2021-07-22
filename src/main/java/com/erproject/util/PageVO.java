package com.erproject.util;

import lombok.Data;

@Data
public class PageVO {

	private int startPage; // 첫 페이지
	private int endPage; // 끝 페이지
	private boolean next; // 다음 버튼 활성화 여부
	private boolean prev; // 이전 버튼 활성화 여부
	
	private int total; // 총 게시글 수
	private int pageNum; // 조회하는 페이지 번호
	private int amount; // 보여질 게시글 수
	
	public PageVO(Criteria cri, int total) {
		this.pageNum = cri.getPageNum();
		this.amount = cri.getAmount();
		this.total = total;
		
		this.endPage = (int)Math.ceil(this.pageNum / (double)this.amount) * amount;
		
		this.startPage = this.endPage - 10 + 1;
		
		int realEnd = (int)Math.ceil(this.total / (double)this.amount);
		
		if(this.endPage > realEnd) {
			this.endPage = realEnd;
		}
		
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
		
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	
	
	
}
