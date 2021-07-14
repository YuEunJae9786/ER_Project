<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>

<<<<<<< HEAD
<head>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/csBoard.css">
</head>
=======
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/csBoard.css">
	<script src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>
>>>>>>> master

<style>
	.content-view-wrap {
	    white-space: pre-wrap;
	}
</style>

<!-- 본문 제목 -->
    <div class="col-xs-12">
        <h1 class="content-title">고객지원</h1>
    </div>

    <!-- 본문 헤더 -->
    <div class="container">
        <ul class="row col-xs-12 content-header">
            <li class="col-xs-4"><a href="#" class="active" data-select=".content-notice-box1">Notice</a></li>
            <li class="col-xs-4"><a href="#" data-select=".content-notice-box2">FAQ</a></li>
            <li class="col-xs-4"><a href="#" data-select=".content-notice-box3">QNA</a></li>
        </ul>
    </div>

    <!-- 글등록 -->
    <div class="container post-regist hidden2">
        <form action="noticeRegist" method="post" id="registForm">
        
        	<!-- 컨트롤러에 같이 넘겨줘야 하는 데이터 -->
        	<input type="hidden" id="boardWriter" name="" value="master123">
        	
        	<div class="categori" id="boardCategori">
	        	<label>대분류</label><br/>
	        	<select>
	        		<option>로그인</option>
	        		<option>대여</option>
	        		<option>리뷰</option>
	        	</select>
	            
        	</div>
        	
            <!-- 제목 -->
            <label>제목</label><br/>
            <input type="text" id="boardTitle" name="" placeholder="제목을 입력하세요" autocomplete="off" style="width: 70%;"><br/>
            <hr/>
        	

            <!-- 내용 -->
            <label>내용</label><br/>
            <textarea id="boardContent" name="" class="regist-content" placeholder="내용을 입력하세요"></textarea><br/>

            <div class="btn">
                <button type="button" class="btn btn-default btn-signature1">이미지 업로드</button>
                <button type="button" id="registBtn" class="btn btn-default btn-signature2">등록</button>
            </div>

        </form>
    </div>

    
    <!-- 게시판 상단 순서, 검색 -->
    <div class="container">
    
    	<form action="csBoardList" method="post" id="listForm">

	        <!-- 순서 -->
	        <div class="list-option">
	            <select name="orderType">
	                <option value="latestOrder" ${orderType eq '' or orderType eq 'latestOrder' ? 'selected' : ''}>최신순</option>
	                <option value="viewOrder" ${orderType eq 'viewOrder' ? 'selected' : '' }>조회순</option>
	            </select>
	        </div>
	
	        <!-- 대분류 -->
	        <div class="list-mainCategori">
	            <select>
	                <option>대분류</option>
	                <option>로그인</option>
	                <option>제품</option>
	                <option>대여</option>
	            </select>
	        </div>
	            
	        <!-- 검색 -->
	        <div class="search">
	            <select name="searchType">
	                <option value="title">제목</option>
	                <option value="writer">작성자</option>
	                <option value="tiwri">제목+작성자</option>
	            </select>
	
	            <input type="text" name="searchName" placeholder="검색내용">
	            <button type="submit" class="btn btn-default btn-single btn-signature1">검색</button>
	        </div>
	        
    	</form>
    </div>

    <!-- 본문 게시판 1 -->
    <div class="container content-notice-box1 active">
        <div class="row col-xs-12 content-notice">
            <div class="content-header">
                <ul>
                    <li class="col-xs-2 col-sm-1">순번</li>
                    <li class="col-xs-3 col-md-6">제목</li>
                    <li class="col-xs-2 col-md-2">작성자</li>
                    <li class="col-xs-3 col-md-2">등록일</li>
                    <li class="col-xs-2 col-md-1">조회수</li>
                </ul>
            </div>
            <div class="content-section">
            	<c:forEach var="list" items="${noticeList }">
	            	<ul>
	                    <li class="col-xs-2 col-sm-1">${list.notice_No }</li>
	                    <li class="col-xs-3 col-md-6">
	                        <a href="#" id="a" onclick="contentView(${list.notice_No})">${list.notice_Title }</a>
	                    </li>
	                    <li class="col-xs-2 col-md-2">${list.notice_Writer }</li>
	                    <li class="col-xs-3 col-md-2">${list.notice_Regdate }</li>
	                    <li class="col-xs-2 col-md-1">${list.notice_View }</li>
	                    <li class="col-xs-12 content-view hidden">
	                        <div class="content-view-img">
	                            <img src="${pageContext.request.contextPath }/resources/img/dog.png" alt="이미지">
	                        </div>
	                        <div class="content-view-wrap">${list.notice_Content }</div>
	                        <div class="content-view-btn">
	                            <button type="button" class="btn btn-default btn-signature1">수정</button>
	                            <button type="button" class="btn btn-default btn-signature2" onclick="deleteList(${list.notice_No});">삭제</button>
	                        </div>
	                    ​</li>
	                </ul>
           		</c:forEach>
            </div>
        </div>

    </div>

    <!-- 본문 게시판 2 -->
    <div class="container content-notice-box2 hidden">
        <div class="row col-xs-12 content-notice">
            <div class="content-header">	
                <ul>
                    <li class="col-xs-2 col-sm-1">순번</li>
                    <li class="col-xs-3 col-md-6">제목</li>
                    <li class="col-xs-2 col-md-2">작성자</li>
                    <li class="col-xs-3 col-md-2">등록일</li>
                    <li class="col-xs-2 col-md-1">조회수</li>
                </ul>
            </div>
            <div class="content-section">
<<<<<<< HEAD
                <ul>
                    <li class="col-xs-2 col-sm-1">1</li>
                    <li class="col-xs-3 col-md-6">
                        <a href="#" id="a" onclick="contentView()">자주 묻는 질문 게시판 입니다.</a>
                    </li>
                    <li class="col-xs-2 col-md-2">관리자</li>
                    <li class="col-xs-3 col-md-2">2021-07-03</li>
                    <li class="col-xs-2 col-md-1">1</li>
                    <li class="col-xs-12 content-view hidden">
                        <div class="content-view-img">
                            <img src="${pageContext.request.contextPath }/resources/img/star.png" alt="이미지">
                        </div>
                        <div class="cotnet-view-wrap">
                            수없이 <br/>

                            많은 <br/>
                            
                            별들 중<br/>
                            
                            가장 빛나는<br/>

                            별은<br/>

                            바로 너야<br/>
                        </div>
                        <div class="content-view-btn">
                            <button type="button" class="btn btn-default btn-signature1">수정</button>
                            <button type="button" class="btn btn-default btn-signature2">삭제</button>
                        </div>
                    ​</li>
                </ul>
                <ul>
                    <li class="col-xs-2 col-sm-1">2</li>
                    <li class="col-xs-3 col-md-6">
                        <a href="#" onclick="contentView()">하 진짜 애니메이션은 또 어떻게 넣지 ...?</a>
                    </li>
                    <li class="col-xs-2 col-md-2">관리자</li>
                    <li class="col-xs-3 col-md-2">2021-07-05</li>
                    <li class="col-xs-2 col-md-1">3</li>
                    <li class="col-xs-12 content-view hidden">
                        <div class="content-view-img">
                            <img src="${pageContext.request.contextPath }/resources/img/day.png" alt="이미지">
                        </div>
                        <div class="cotnet-view-wrap">
                            햇빛은 달콤하고, 비는 상쾌하고, <br/>

                            바람은 시원하며, 눈은 기분을 들뜨게 만든다 <br/>
                            
                            세상에 나쁜 날씨란 없다.<br/>

                            서로 다른 종류의 좋은 날씨만 있을 뿐 <br/>
                        </div>
                        <div class="content-view-btn">
                            <button type="button" class="btn btn-default btn-signature1">수정</button>
                            <button type="button" class="btn btn-default btn-signature2">삭제</button>
                        </div>
                    ​</li>
                </ul>
                <ul>
                    <li class="col-xs-2 col-sm-1">3</li>
                    <li class="col-xs-3 col-md-6">
                        <a href="#">후... 이거 맞습니까?</a>
                    </li>
                    <li class="col-xs-2 col-md-2">관리자</li>
                    <li class="col-xs-3 col-md-2">2021-07-03</li>
                    <li class="col-xs-2 col-md-1">1</li>
                </ul>
                <ul>
                    <li class="col-xs-2 col-sm-1">4</li>
                    <li class="col-xs-3 col-md-6">
                        <a href="#">너무... 어렵습니다 ~</a>
                    </li>
                    <li class="col-xs-2 col-md-2">관리자</li>
                    <li class="col-xs-3 col-md-2">2021-07-03</li>
                    <li class="col-xs-2 col-md-1">1</li>
                </ul>
                <ul>
                    <li class="col-xs-2 col-sm-1">5</li>
                    <li class="col-xs-3 col-md-6">
                        <a href="#">어찌 합 니까.. 어떻게 할까요..</a>
                    </li>
                    <li class="col-xs-2 col-md-2">관리자</li>
                    <li class="col-xs-3 col-md-2">2021-07-03</li>
                    <li class="col-xs-2 col-md-1">1</li>
                </ul>
                
=======
               <c:forEach var="list" items="${faqList }">
                	<ul>
	                    <li class="col-xs-2 col-sm-1">${list.faq_No }</li>
	                    <li class="col-xs-3 col-md-6">
	                        <a href="#" id="a" onclick="contentView(${list.faq_No })">${list.faq_Title }</a>
	                    </li>
	                    <li class="col-xs-2 col-md-2">${list.faq_Writer }</li>
	                    <li class="col-xs-3 col-md-2">${list.faq_Regdate }</li>
	                    <li class="col-xs-2 col-md-1">${list.faq_View }</li>
	                    <li class="col-xs-12 content-view hidden">
	                        <div class="content-view-img">
	                            <img src="${pageContext.request.contextPath }/resources/img/cat.png" alt="이미지">
	                        </div>
	                        <div class="content-view-wrap">${list.faq_Content }</div>
	                        <div class="content-view-btn">
	                            <button type="button" class="btn btn-default btn-signature1">수정</button>
	                            <button type="button" class="btn btn-default btn-signature2" onclick="deleteList(${list.faq_No});">삭제</button>
	                        </div>
	                    ​</li>
                	</ul>
                </c:forEach>
>>>>>>> master
            </div>
        </div>

    </div>

    <!-- 본문게시판3 -->
    <div class="container content-notice-box3 hidden">
        <div class="row col-xs-12 content-notice">
            <div class="content-header">
                <ul>
                    <li class="col-xs-2 col-sm-1">순번</li>
                    <li class="col-xs-3 col-md-6">제목</li>
                    <li class="col-xs-2 col-md-2">작성자</li>
                    <li class="col-xs-3 col-md-2">등록일</li>
                    <li class="col-xs-2 col-md-1">조회수</li>
                </ul>
            </div>
            <div class="content-section">
                <c:forEach var="list" items="${qnaList }">
                	<ul>
	                    <li class="col-xs-2 col-sm-1">${list.qna_No }</li>
	                    <li class="col-xs-3 col-md-6">
	                        <a href="#" id="a" onclick="contentView(${list.qna_No })">${list.qna_Title }</a>
	                    </li>
	                    <li class="col-xs-2 col-md-2">${list.qna_Writer }</li>
	                    <li class="col-xs-3 col-md-2">${list.qna_Regdate }</li>
	                    <li class="col-xs-2 col-md-1">${list.qna_View }</li>
	                    <li class="col-xs-12 content-view hidden">
	                        <div class="content-view-wrap">${list.qna_Content }</div>
	                        <div class="content-view-btn">
	                            <button type="button" class="btn btn-default btn-signature1">수정</button>
	                            <button type="button" id="btn-reply" class="btn btn-default btn-signature1">답변</button>
	                            <button type="button" class="btn btn-default btn-signature2" onclick="deleteList(${list.qna_No})">삭제</button>
	                        </div>
	                        <!-- 답변 -->
	                        <div class="col-xs-12 content-reply">
	                            <div class="reply-id">
	                                <span>아이디 : </span>
	                            </div>
	                            <div class="reply-comment">
                               			답변이 길어져도 어떻게 잘 되기 위해서 어디까지 길어져야 확인할 수가 있는거지? 좀 알려줄래요?@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	                            </div>
	                        </div>
	                        
	                        <!-- 답변 폼 -->
	                        <form action="" method="post" class="hidden">
	                            <textarea class="regist-reply">답변쓰기</textarea>
	
	                            <div class="btn-right">
	                                <button type="button" class="btn btn-single btn-signature1">등록</button>
	                            </div>
	                        </form>
	                    ​</li>
                	</ul>
                </c:forEach>
            </div>
        </div>
    </div>

    <!-- 페이지네이션 -->
    <form action="csBoardList" name="pageForm" method="post">
	    <div class="container content-page">
	        <ul class="paging content-notice-box1 hidden">
	
	            <!-- 이전 -->
	            <c:if test="${noticePage.prev }">
	            	<li class="prev"><a href="#" data-pagenum="${noticePage.startPage - 1}">이전</a></li>
				</c:if>
	
	            <!-- 페이지 -->
	            <c:forEach var="num" begin="${noticePage.startPage }" end="${noticePage.endPage }">
		            <li class="${noticePage.pageNum eq num ? 'active' : '' }">
                        <a href="#" data-pagenum="${num}">${num }</a>
                    </li>
	            </c:forEach>
	
	            <!-- 다음 -->
	            <c:if test="${noticePage.next }">
	            	<li class="next"><a href="#" data-pagenum="${noticePage.endPage + 1}">다음</a></li>
                </c:if>
	            
	        </ul>
	        <ul class="paging content-notice-box2 hidden">
	
	            <!-- 이전 -->
	            <c:if test="${faqPage.prev }">
	            	<li class="prev"><a href="#" data-pagenum="${faqPage.startPage - 1}">이전</a></li>
				</c:if>
	
	            <!-- 페이지 -->
	            <c:forEach var="num" begin="${faqPage.startPage }" end="${faqPage.endPage }">
		            <li class="${faqPage.pageNum eq num ? 'active' : '' }">
                        <a href="#" data-pagenum="${num}">${num }</a>
                    </li>
	            </c:forEach>
	
	            <!-- 다음 -->
	            <c:if test="${faqPage.next }">
	            	<li class="next"><a href="#" data-pagenum="${faqPage.endPage + 1}">다음</a></li>
	            </c:if>
	
	        </ul>
	        <ul class="paging content-notice-box3 hidden">
	
	            <!-- 이전 -->
	            <c:if test="${qnaPage.prev }">
            		<li class="prev"><a href="#">이전</a></li>
            	</c:if>
	
	            <!-- 페이지 -->
	            <c:forEach var="num" begin="${qnaPage.startPage }" end="${qnaPage.endPage }">
		            <li class="${qnaPage.pageNum eq num ? 'active' : '' }">
                        <a href="#" data-pagenum="${num}">${num }</a>
                    </li>
	            </c:forEach>
	
	            <!-- 다음 -->
	            <c:if test="${qnaPage.next }">
            		<li class="next"><a href="#">다음</a></li>
            	</c:if>
	
	        </ul>

             <!-- 글쓰기 -->
             <div class="btn-right">
                <button type="button" class="btn btn-default btn-signature1 btn-single" id="regist">글쓰기</button>
            </div>

            <input type="hidden" name="pageNum" value="1">
            <input type="hidden" name="orderType" value="${orderUtil.orderType }">
            <input type="hidden" name="searchType" value="${orderUtil.searchType }">
            <input type="hidden" name="searchName" value="${orderUtil.searchName }">
	        
	    </div>
    </form>
    
    <!-- 컨트롤러 이동 스크립트 -->
    <script>
    	
    	$(document).ready( function() {
    		
            // 글쓰기 등록
	   		$("#registForm > .btn > #registBtn").click( function() {
	   			
	   			$("#registForm > input[name=whereBoard]").attr("value", $(".content-header .active").html() );
	   			
	   			// 어떤 게시판?
	   			var whereBoard = $(".content-header .active").html();
	   			
	   			console.log(whereBoard);
	   			
	   			if(whereBoard == "Notice"){
	   				$("#registForm").attr("action","noticeRegist");
	   				$("#registForm input[id=boardWriter]").attr("name", "notice_Writer");
	   				$("#registForm input[id=boardTitle]").attr("name", "notice_Title");
	   				$("#registForm textarea[id=boardContent]").attr("name", "notice_Content");
	   			} else if ( whereBoard == "FAQ") {
	   				$("#registForm").attr("action","faqRegist");
	   				$("#registForm input[id=boardWriter]").attr("name", "faq_Writer");
	   				$("#registForm input[id=boardTitle]").attr("name", "faq_Title");
	   				$("#registForm textarea[id=boardContent]").attr("name", "faq_Content");
	   			}
	   			
	   			$("#registForm").submit();
	   			
	   		}); // click
	   		
	   		// 게시판 순서
	   		$(".list-option > select").change( function() {
	   			
	   			$("#listForm").submit();
	   			
<<<<<<< HEAD
	   		}); // change
=======
	   		}); // 게시판 순서
	   		
	   		// 대분류
	   		$(".list-mainCategori > select").change( function() {
                
                var whereBoard = $(".content-header .active").html();
                setCookie("whereboard", whereBoard);

                $("#listForm").submit();

            }); // 대분류

            // 페이지네이션 클릭
            $(".content-page").on("click", "a", function() {
                event.preventDefault();

                document.pageForm.pageNum.value = event.target.dataset.pagenum;
			    document.pageForm.submit();
            });
>>>>>>> master
	   		
    	}); // ready
    	
    	// 글 삭제
    	function deleteList(bno) {
    		
    		var whereBoard = $(".content-header .active").html();
    		
    		location.href = "delete?whereboard=" + whereBoard + "&bno=" + bno;
    		
    	}
    
    </script>
    
    <!-- 동적 작동 -->
    <script>

<<<<<<< HEAD
=======
        /* 쿠키를 통해 현재 게시판 탐색 */
        $(document).ready( function() {
            
            if(getCookie("whereboard") == undefined){
                setCookie("whereboard", "Notice");
            } 
            
            /* 전에 보여지던 게시판 */
            var preActive = document.querySelector("body > div.active");
            if(preActive != null){
                preActive.classList.remove("active");
                preActive.classList.add("hidden");
            }

            /* 현재 보여질 헤더, 게시판, 페이지네이션 */
            var active = getCookie("whereboard");
            $("#" + active).addClass("active");
            document.querySelector( document.querySelector( "#" + active).dataset.select ).classList.add("active");
            document.querySelector( document.querySelector( "#" + active).dataset.select ).classList.remove("hidden")
            document.querySelector( ".content-page > " + document.querySelector( "#" + active).dataset.select ).classList.add("active");
            document.querySelector( ".content-page > " + document.querySelector( "#" + active).dataset.select  ).classList.remove("hidden");

            listOption(); // 처음에 대분류를 화면에 표시할지 메서드 실행
        });

>>>>>>> master
        /* 헤더 active */
        $(".content-header").on("click", "a", function () {
            event.preventDefault();

            var preActive = document.querySelector("body > div.active");
            preActive.classList.remove("active");
            preActive.classList.add("hidden");

            var prePaging = document.querySelector(".content-page > .active");
            prePaging.classList.remove("active");
            prePaging.classList.add("hidden");

            $(".content-header > li > .active").removeClass("active");
            $(this).addClass("active");

            var currentActive = document.querySelector( event.target.dataset.select );
            currentActive.classList.remove("hidden");
            currentActive.classList.add("active");

            var currentPaging = document.querySelector( ".content-page > " + event.target.dataset.select );
            currentPaging.classList.remove("hidden");
            currentPaging.classList.add("active");

            $(".post-regist").css("display", "none");

<<<<<<< HEAD
=======
            listOption();

            setCookie("whereboard", $(".content-header .active").html());

            init();
            
            document.pageForm.submit();
>>>>>>> master
        });

        /* 글쓰기 hidden */
        $("#regist").click( function() {
            
            /* QNA 게시판에서 글쓰기를 누를경우 페이지 이동 */
            var currnetTab = $(".content-header .active").html();
            if( currnetTab == 'QNA'){
                location.href="qnaRegist.html";
                return;
            } else if  ( currnetTab == 'FAQ' ){
            	
                if( $("#boardCategori").hasClass("hidden") == true){
                    $("#boardCategori").removeClass("hidden");
                }

            } else {

                if( $("#boardCategori").hasClass("hidden") == false){
                    $("#boardCategori").addClass("hidden");
                }

            }
            
            /* QNA 게시판이 아닌 경우에 글쓰기를 누를경우, 숨겨져있던 글쓰기 나옴 */
            $(".post-regist").toggle("hidden");
            
        });

        /* 글 상세 */
        var preTarget;
        function contentView(bno) {
            event.preventDefault();
            
            /* 현재 누른 타겟 */
            var currentTarget = event.target.parentElement.nextElementSibling.nextElementSibling.nextElementSibling.nextElementSibling.classList;
            currentTarget.add("active");
            currentTarget.toggle("hidden");
            
            /* 전에 눌러져 있던 타겟  */
            if(preTarget != null && preTarget != currentTarget){
                preTarget.remove("active");
                preTarget.add("hidden");
            }

            preTarget = currentTarget;
            
            /* 게시글 조회 수 증가 */
            var whereboard = $(".content-header .active").html();
            var changeTarget = event.target.parentElement.nextElementSibling.nextElementSibling.nextElementSibling;
            $.ajax({
                type: "post",
                url: "countView",
                dataType: "json",
                contentType: "application/json; charset=UTF-8",
                data: JSON.stringify({"whereboard": whereboard, "bno": bno}),
                success : function(data) {

                    if(data == 1){
                        var plus = (changeTarget.innerHTML*1) + 1; // string -> number + 1
                        changeTarget.innerHTML = plus;
                    } 

                },
                error: function(status, error){
                    console.log(status, error);
                }
            });
        }

        /* 글 상세 - 답변 */
        $(".content-notice-box3").on("click", "button", function() {
            if(  $(this).attr("id") != 'btn-reply' ) return;

            var currentTarget = event.target.parentElement.nextElementSibling.nextElementSibling.classList;
            currentTarget.toggle("hidden");
        });
        
        /* 컨트롤러로 넘어갈 때, 변수 처리 */
        function init() {
        	document.pageForm.pageNum.value = 1;
        	document.pageForm.searchType.value = '';
        	document.pageForm.searchName.value = '';
        }

    </script>
    
    <!-- 메시지 처리 -->
    <script>
    
    	$(document).ready( function() {
    		
    		if(history.state == '' ) return;	
    		
	    	var msg = '<c:out value="${msg }" />';
	    	if(msg != ''){
	    		alert(msg);
				// 기존 기록을 삭제하고 새로운 기록을 추가 ( 이렇게 변경된 값은 history.state로 데이터를 확인가능 )
				history.replaceState('', null, null);
	    	}
    	});
    
    </script>
    