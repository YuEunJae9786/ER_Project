<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<head>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/hyungki.css">
</head>

<section class="sect-main">
	<div class="container">
		<div class="top-text">
			<h3>PRODUCT INFO</h3>
		</div>
		<!-- 전체페이지 바디 -->
		<div class="row">
			<div class="top-info">
				<!-- 제품이미지 -->
				<div class="productImgWrapper">
					<div class="productImgMain">
						<div class="productImgDetail">
							<img src="${pageContext.request.contextPath }/resources/img/kick2.png">
						</div>
					</div>
					<div class="productImgSub">
						<div class="subImg">
							<img src="${pageContext.request.contextPath }/resources/img/kick2.png" id="${pageContext.request.contextPath }/resources/img/kick2.png">
						</div>
						<div class="subImg">
							<img src="${pageContext.request.contextPath }/resources/img/kick1.jpg" id="${pageContext.request.contextPath }/resources/img/kick1.jpg">
						</div>
						<div class="subImg">
							<img src="${pageContext.request.contextPath }/resources/img/kick3.jpg" id="${pageContext.request.contextPath }/resources/img/kick3.jpg">
						</div>
						<div class="subImg">
							<img src="${pageContext.request.contextPath }/resources/img/kick4.jpg" id="${pageContext.request.contextPath }/resources/img/kick4.jpg">
						</div>
						<div class="subImg">
							<img src="${pageContext.request.contextPath }/resources/img/copy.png" id="${pageContext.request.contextPath }/resources/img/copy.png">
						</div>
					</div>

				</div>
				<!-- 제품설명 -->
				<div class="productCntWrapper">
					<div class="productName">
						<h2>${info.pname }</h2>
					</div>
					<div class="productCompany">
						<h3>${info.cpname }</h3>
						<hr />
					</div>
					<div class="productInfo">
						<p>
							${info.pbasicinfo } <br />
							[킥보드 스펙 정보]<br /> 
							1. ${info.pspec1 }<br />
							2. ${info.pspec2 }<br />
							3. ${info.pspec3 }<br />
							<hr />
						</p>
					</div>
					<div class="productRentalBtn1">
						<button type="button" class="btn btn-lg">문의하기</button>
					</div>
					<div class="productRentalBtn2">
						<button type="button" class="btn btn-lg">대여하기</button>
					</div>
				</div>
			</div>

			<!-- 중간 탭부분 -->
			<div class="mid-info">
				<ul class="tabs-basic">
					<li class="bt1"><a>킥보드 소개</a></li>
					<li class="bt2"><a>관련링크</a></li>
					<li class="bt3"><a>후기 (${list.size() })</a></li>
					<li class="bt4"><a>문의하기</a></li>
					<li class="bt5"><a>대여하기</a></li>
				</ul>

				<div class="tab-content">

					<!-- 킥보드 소개 -->
					<div class="kickInfo1">
						<div class="kickInfoWrap">
							<div class="kickInfoHead">
								<h3>${info.pname } 제품 소개</h3>
								<hr />
							</div>
							<div class="kickInfoCnt">
								${info.pcontent }
								<hr />
							</div>
							<div class="kickInfoImg">
								<div class="kickImgSrc">
									<img src="${pageContext.request.contextPath }/resources/img/productSpecImg.png">
								</div>
								<div class="kickImgSrc">
									<img src="${pageContext.request.contextPath }/resources/img/productInfoImg.jpg">
								</div>
							</div>
						</div>
					</div>

					<!-- 킥보드 링크 -->
					<div class="kickLink2">
						<div class="linkWrap">
							<div class="linkHead">
								<h3>해당 킥보드 관련 링크를 보여줍니다.</h3>
								<hr>
							</div>
							<div class="linkVideo">
								<h3>유튜브 영상~</h3>
								<br /> <a href="#">https://www.youtube/kickboard1</a><br />
								<a href="#">https://www.youtube/kickboard2</a>
							</div>
							<hr>
							<div class="linkBlog">
								<h3>블로그 리뷰~</h3>
								<br /> <a href="#">https://www.naver.com/post/kickboard1</a><br />
								<a href="#">https://www.naver.com/post/kickboard2</a>
							</div>
						</div>
					</div>

					<!-- 후기 -->
					<div class="kickReview3">
					
						<div class="reviewBoardPost">
							<div class="boardTitle">
								<h3>후기</h3>
								<hr>
							</div>
							<div class="boardTotalGrade">
								<h3>
									??(...) / 5 <small>(${list.size() }개 후기)</small>
								</h3>
								<hr>
							</div>
							<div class="boardPostList">
								<div class="reviewTextWrap">

									<!-- 여기부터 -->
									<c:forEach var="vo" items="${list }">
									<div class="reviewMoveWin">
										<a href="productReviewSave?rno=${vo.rno }">
											<div class="textHeader">
												<div class="reviewStar">${vo.star }</div>
												<div class="reviewWriter">${vo.writer }</div>
												<div class="reviewDate">${vo.regdate }</div>
											</div>
											<div class="reviewTextArea">
												${vo.content }
												<hr />
											</div>
										</a>
									</div>
									</c:forEach>
									<!-- 여기까지 반복문 돌려서 후기를 쌓기 -->

								</div>
							</div>
							
							<div class="content-page">
        						<ul class="paging">

            						<!-- 이전 -->
            						<li class="prev"><a href="#">이전</a></li>

						            <!-- 페이지 -->
						            <li class="active"><a href="#">1</a></li>
						            <li><a href="#">2</a></li>
						            <li><a href="#">3</a></li>
						            <li><a href="#">4</a></li>
						            <li><a href="#">5</a></li>

						            <!-- 다음 -->
						            <li class="next"><a href="#">다음</a></li>

						            <!-- 후기쓰기 -->
						            <div class="reviewPostBtn">
						                <button type="button" class="btn" 
						                	onclick="location.href='productReviewRegist?pcode=${info.pcode }' ">후기 쓰기</button>
						            </div>

						        </ul>
						    </div>
							
							<%-- <div class="reviewPostBtn">
								<button type="button" class="btn btn-lg"
									onclick="location.href='productReviewRegist?pcode=${info.pcode }' ">후기 쓰기</button>
							</div> --%>
							
						</div>
					</div>

					<!-- 문의 -->
					<div class="kickQna4">
						<div class="qnaWrap">
							<h3>QNA</h3>
							<hr>
							<a href=""> <strong>문의하기 페이지로 이동합니다.</strong>
							</a>
						</div>
					</div>

					<!-- 대여 -->
					<div class="kickRental5">
						<div class="rentalWrap">
							<h3>Rental</h3>
							<hr />
							<a href=""> <strong>대여하기 페이지로 이동합니다.</strong>
							</a>
						</div>
					</div>

				</div>

			</div>

		</div>
	</div>
	
	<div style="position: fixed; bottom: 25px; right: 25px; width: 50px; height: 50px; line-height: 50px; text-align: center; background-color: cornflowerblue; border-radius: 5px;" class="topBtnTest">
        <a href="#sect-main" style="color: #fff; font-size: medium; text-decoration: none;">
            <strong>⇧</strong>
        </a>
    </div>
	
</section>

<!-- 이미지 호버... 클릭으로 -->
<script>
	var sub = document.querySelector(".productImgSub");
	var img = document.querySelector(".productImgDetail > img");

	sub.onclick = function() {
		event.preventDefault();

		if (event.target.tagName != "IMG")
			return;

		console.log(event.target.id);
		img.src = event.target.id;

	}
	
	</script>

	<!-- 스크롤파이 스크립트 -->
	<script>

        var box1 = document.querySelector(".kickInfo1");
        var box2 = document.querySelector(".kickLink2");
        var box3 = document.querySelector(".kickReview3");
        var box4 = document.querySelector(".kickQna4");
        var box5 = document.querySelector(".kickRental5");

        var bt1 = document.querySelector(".bt1");
        var bt2 = document.querySelector(".bt2");
        var bt3 = document.querySelector(".bt3");
        var bt4 = document.querySelector(".bt4");
        var bt5 = document.querySelector(".bt5");

        bt1.addEventListener("click", function() {
            window.scrollTo({top: box1.offsetTop - 170, behavior: "smooth"})
        })
        bt2.addEventListener("click", function() {
            window.scrollTo({top: box2.offsetTop - 170, behavior: "smooth"})
        })
        bt3.addEventListener("click", function() {
            window.scrollTo({top: box3.offsetTop - 170, behavior: "smooth"})
        })
        bt4.addEventListener("click", function() {
            window.scrollTo({top: box4.offsetTop - 170, behavior: "smooth"})
        })
        bt5.addEventListener("click", function() {
            window.scrollTo({top: box5.offsetTop - 170, behavior: "smooth"})
        })

    </script>
    <!-- 메시지 출력 -->
    <script>
    
    	window.onload = function() {
    		
    		if(history.state == '') return;
    		
    		var msg = '<c:out value="${msg}" />';
    		
    		if(msg != '') {
    			alert(msg);
    			//기존 기록을 삭제하고 새로운 기록을 추가 (이렇게 변경된 값은 history.state로 데이터를 확인가능)
				history.replaceState('', null, null); //브라우저 기록컨트롤 (추가할데이터, 제목, url주소)
				console.log(history.state);
			
    		}
    	}
    	
    </script>
    <!-- top 이동 -->
    <script>
        var topBox = document.querySelector(".header-main");
        var topBtn = document.querySelector(".topBtnTest");
        topBtn.addEventListener("click", function() {
            window.scrollTo({top: topBox.offsetTop, behavior: "smooth"})
        })
    </script>
    
    