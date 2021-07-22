<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/hyungki.css">
</head>

<!-- 후기 수정 페이지 -->
    <section class="sect-main">
        <div class="container" style="margin-bottom: 75px;">
            <div class="row">
                <div class="write-wrap">
                        <div class="titlebox">
                            <p>Review Page</p>
                        </div>
                        
                        <form action="reviewUpdate" method="post">
                            <div>
                                <label>날짜</label>
                                <p>${vo.regdate }</p>
                            </div>   
                            <div class="form-group">
                                <label>번호</label>
                                <input class="form-control" name='rno' value="${vo.rno }" readonly>
                            </div>
                            <div class="form-group">
                                <label>작성자(회원ID)</label>
                                <input class="form-control" name='writer' value="${vo.writer }" readonly>
                            </div>    
                            <div class="form-group">
                                <label>제목</label>
                                <input class="form-control" name='title' value="${vo.title }">
                            </div>
                            <div class="form-group">
                                <label>별점</label>
                                <select class="sel-star form-control" name="star"><!-- 삼항연산자 사용해서 selected 적용하기 -->
                                    <option value="★★★★★" ${vo.star eq '★★★★★' ? 'selected' : '' }>★★★★★(5점)</option>
									<option value="★★★★☆" ${vo.star eq '★★★★☆' ? 'selected' : '' }>★★★★☆(4점)</option>
									<option value="★★★☆☆" ${vo.star eq '★★★☆☆' ? 'selected' : '' }>★★★☆☆(3점)</option>
									<option value="★★☆☆☆" ${vo.star eq '★★☆☆☆' ? 'selected' : '' }>★★☆☆☆(2점)</option>
									<option value="★☆☆☆☆" ${vo.star eq '★☆☆☆☆' ? 'selected' : '' }>★☆☆☆☆(1점)</option>
									<option value="☆☆☆☆☆" ${vo.star eq '☆☆☆☆☆' ? 'selected' : '' }>☆☆☆☆☆(0점)</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>내용</label>
                                <textarea class="form-control" rows="10" name='content' >${vo.content }</textarea>
                            </div>

                            <button type="submit" class="btn btn-default reviewModiSaveBtn">저장</button>
                            <button type="button" class="btn btn-default reviewModiDelBtn" onclick="location.href='reviewDelete?rno=${vo.rno}' " >삭제</button>
                    </form>
                                    
                </div>
            </div>
        </div>
        </section>

        