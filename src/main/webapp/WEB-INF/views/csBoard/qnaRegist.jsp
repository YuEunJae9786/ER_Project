<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/qnaRegist.css">


		<!-- 글 등록 폼 -->
        <div class="container">
            <div class="row">
                <div class="col-xs-12 content-wrap">
                    
                    <div class="titlebox">
                        <p>QnA</p>
                    </div>
                    
                    <form action="" method="post">
                        
                        <!-- 대분류 -->
                        <div class="form-title">
                            <label>대분류 : </label>
                            <select>
                                <option>로그인</option>
                                <option>대여</option>
                                <option>리뷰</option>
                            </select>
                        </div>

                        <!-- 일반,비밀 -->
                        <div class="form-title">
                            <label>글종류 : </label>
                            <select>
                                <option>일반글</option>
                                <option>비밀글</option>
                            </select>
                        </div>
                        
                        <!-- 작성자 -->
                        <div class="form-title">
                            <label>작성자 : </label>
                            <input type="text" value="사라만더" disabled required>
                        </div>
                        
                        <!-- 제목 -->
                        <div class="form-title">
                            <label>제목 : </label>
                            <input type="text" class="input-title" placeholder="제목" required>
                        </div>
                        
                        <!-- 내용 -->
                        <div class="form-title content">
                            <label>내용 : </label >
                            <textarea placeholder="내용을 입력하세요."></textarea>
                        </div>
                        
                        <!-- 버튼 -->
                        <div class="content-btn">
                            <button type="button" class="btn btn-default btn-signature1">등록</button>
                            <button type="button" class="btn btn-default btn-signature2" onclick="location.href='csBoardList'">목록</button>
                        </div>
                        
                    </form>
                </div>
                
            </div>
        </div>