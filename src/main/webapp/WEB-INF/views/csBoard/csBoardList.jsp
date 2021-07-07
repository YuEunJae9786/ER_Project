<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/csBoard.css">
</head>

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
        <form action="" method="post">
            
            <!-- 제목 -->
            <label>제목</label><br/>
            <input type="text" name="title" placeholder="제목을 입력하세요" autocomplete="off" style="width: 70%;"><br/>

            <!-- 내용 -->
            <label>내용</label><br/>
            <textarea class="regist-content">내용을 입력하세요</textarea><br/>

            <div class="btn">
                <button type="button" class="btn btn-default btn-signature1">이미지 업로드</button>
                <button type="button" class="btn btn-default btn-signature2">등록</button>
            </div>

        </form>
    </div>

    
    <!-- 게시판 상단 순서, 검색 -->
    <div class="container">

        <!-- 순서 -->
        <div class="list-option">
            <select>
                <option>최신순</option>
                <option>조회순</option>
            </select>
        </div>

        <!-- 대분류 -->
        <div class="list-categori">
            <select>
                <option>대분류</option>
                <option>로그인</option>
                <option>제품</option>
                <option>대여</option>
            </select>
        </div>
            
        <!-- 검색 -->
        <div class="search">
            <select>
                <option>제목</option>
                <option>작성자</option>
                <option>제목+작성자</option>
            </select>

            <input type="text" placeholder="검색내용">
            <button type="button" class="btn btn-default btn-single btn-signature1">검색</button>
        </div>
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
                <ul>
                    <li class="col-xs-2 col-sm-1">1</li>
                    <li class="col-xs-3 col-md-6">
                        <a href="#" id="a" onclick="contentView()">공지사항 입니다.</a>
                    </li>
                    <li class="col-xs-2 col-md-2">관리자</li>
                    <li class="col-xs-3 col-md-2">2021-07-03</li>
                    <li class="col-xs-2 col-md-1">1</li>
                    <li class="col-xs-12 content-view hidden">
                        <div class="content-view-img">
                            <img src="${pageContext.request.contextPath }/resources/img/dog.png" alt="이미지">
                        </div>
                        <div class="cotnet-view-wrap">
                            우리가 꿈꿀 수 있다면 이룰 수도 있습니다. <br/>

                            꿈을 가지고 희망을 가져요. <br/>
                            
                            그리고 그 꿈을 멋지게 실현시킬 나의 미래를 생각하며<br/>
                            
                            오늘 하루도 힘내봅시다.<br/>
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
                        <a href="#" onclick="contentView()">이게 대체 왜 안되는거야 ul 태그 진짜 짜증난다 정말 </a>
                    </li>
                    <li class="col-xs-2 col-md-2">관리자</li>
                    <li class="col-xs-3 col-md-2">2021-07-05</li>
                    <li class="col-xs-2 col-md-1">3</li>
                    <li class="col-xs-12 content-view hidden">
                        <div class="content-view-img">
                            <img src="${pageContext.request.contextPath }/resources/img/cat.png" alt="이미지">
                        </div>
                        <div class="cotnet-view-wrap">
                            누구나 마음 속에 여러 사람이 살아 <br/>

                            죽고 싶은 나와 살고 싶은 내가 있어 <br/>
                            
                            포기하고 싶은 나와 지푸라기라도 잡고싶은 내가 매일매일 싸우며 살아간다고<br/>
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
                        <a href="#">아놔 진짜 이거 맞냐?</a>
                    </li>
                    <li class="col-xs-2 col-md-2">관리자</li>
                    <li class="col-xs-3 col-md-2">2021-05-03</li>
                    <li class="col-xs-2 col-md-1">4</li>
                </ul>
                <ul>
                    <li class="col-xs-2 col-sm-1">4</li>
                    <li class="col-xs-3 col-md-6">
                        <a href="#">공지사항은 개뿔</a>
                    </li>
                    <li class="col-xs-2 col-md-2">관리자</li>
                    <li class="col-xs-3 col-md-2">2021-07-03</li>
                    <li class="col-xs-2 col-md-1">1</li>
                </ul>
                <ul>
                    <li class="col-xs-2 col-sm-1">5</li>
                    <li class="col-xs-3 col-md-6">
                        <a href="#">내가지금잠잘때가맞냐?</a>
                    </li>
                    <li class="col-xs-2 col-md-2">관리자</li>
                    <li class="col-xs-3 col-md-2">2021-07-03</li>
                    <li class="col-xs-2 col-md-1">1</li>
                </ul>
                
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
                <ul>
                    <li class="col-xs-2 col-sm-1">1</li>
                    <li class="col-xs-3 col-md-6">
                        <a href="#" id="a" onclick="contentView()">환불 해주세요</a>
                    </li>
                    <li class="col-xs-2 col-md-2">사라만</li>
                    <li class="col-xs-3 col-md-2">2021-02-05</li>
                    <li class="col-xs-2 col-md-1">1</li>
                    <li class="col-xs-12 content-view hidden">
                        <div class="content-view-img">
                            <img src="${pageContext.request.contextPath }/resources/img/swim.png" alt="이미지">
                        </div>
                        <div class="cotnet-view-wrap">
                            너 지금 멋지게 <br/>

                            헤엄 치려고 <br/>
                            
                            숨 참는 것부터<br/>
                            
                            하고 있다고 생각해<br/>
                        </div>
                        
                        <div class="content-view-btn">
                            <button type="button" id="btn-modify" class="btn btn-default btn-signature1">수정</button>
                            <button type="button" id="btn-reply" class="btn btn-default btn-signature1">답변</button>
                            <button type="button" id="btn-remove" class="btn btn-default btn-signature2">삭제</button>
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
                <ul>
                    <li class="col-xs-2 col-sm-1">2</li>
                    <li class="col-xs-3 col-md-6">
                        <a href="#" onclick="contentView()">와 진짜 화면 하나씩 꾸미는거 생각보다 어렵네</a>
                    </li>
                    <li class="col-xs-2 col-md-2">이세상사람이아님</li>
                    <li class="col-xs-3 col-md-2">2030-02-21</li>
                    <li class="col-xs-2 col-md-1">3</li>
                    <li class="col-xs-12 content-view hidden">
                        <div class="content-view-img">
                            <img src="${pageContext.request.contextPath }/resources/img/unknown.png" alt="이미지">
                        </div>
                        <div class="cotnet-view-wrap">
                            앞이 깜깜하고 <br/>

                            앞이 보이지 않을 때가 있죠 <br/>
                            
                            오늘이 그랬나요?<br/>

                            그랬다면 당신은 대단한거에요<br/>

                            그 힘든 하루를 또 참아냈으니까<br/>
                        </div>
                        <div class="content-view-btn">
                            <button type="button" class="btn btn-default btn-signature1">수정</button>
                            <button type="button" class="btn btn-default btn-signature2">삭제</button>
                        </div>

                        <!-- 답변 -->
                        <div class="col-xs-12 content-reply">
                            <div class="reply-id">
                                <span></span>
                            </div>
                            <div class="reply-comment">
                            </div>
                        </div>

                    ​</li>
                </ul>
                <ul>
                    <li class="col-xs-2 col-sm-1">3</li>
                    <li class="col-xs-3 col-md-6">
                        <a href="#">1:1 질문 입니다.</a>
                    </li>
                    <li class="col-xs-2 col-md-2">1:1질문만하는사람</li>
                    <li class="col-xs-3 col-md-2">2021-07-03</li>
                    <li class="col-xs-2 col-md-1">1</li>
                </ul>
                <ul>
                    <li class="col-xs-2 col-sm-1">4</li>
                    <li class="col-xs-3 col-md-6">
                        <a href="#">비밀글 입니다.</a>
                    </li>
                    <li class="col-xs-2 col-md-2">내존재도비밀이다</li>
                    <li class="col-xs-3 col-md-2">2021-07-03</li>
                    <li class="col-xs-2 col-md-1">1</li>
                </ul>
                <ul>
                    <li class="col-xs-2 col-sm-1">5</li>
                    <li class="col-xs-3 col-md-6">
                        <a href="#">일반글 입니다.</a>
                    </li>
                    <li class="col-xs-2 col-md-2">내데이터어디감?</li>
                    <li class="col-xs-3 col-md-2">2021-07-03</li>
                    <li class="col-xs-2 col-md-1">1</li>
                </ul>
                
            </div>
        </div>

    </div>

    <!-- 페이지네이션 -->
    <div class="container content-page">
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

            <!-- 글쓰기 -->
            <div class="btn-right">
                <button type="button" class="btn btn-default btn-signature1 btn-single" id="regist">글쓰기</button>
            </div>
            
        </ul>
    </div>
    
    <script>

        /* 헤더 active */
        $(".content-header").on("click", "a", function () {
            event.preventDefault();

            var preActive = document.querySelector("body > div.active");
            preActive.classList.remove("active");
            preActive.classList.add("hidden");

            $(".content-header > li > .active").removeClass("active");
            $(this).addClass("active");

            var currentActive = document.querySelector( event.target.dataset.select );
            currentActive.classList.remove("hidden");
            currentActive.classList.add("active");

            $(".post-regist").css("display", "none");

        });

        /* 글쓰기 hidden */
        $("#regist").click( function() {

            /* QNA 게시판에서 글쓰기를 누를경우 페이지 이동 */
            if( $(".content-header .active").html() == 'QNA'){
                location.href="qnaRegist.html";
                return;
            }
            
            /* QNA 게시판이 아닌 경우에 글쓰기를 누를경우, 숨겨져있던 글쓰기 나옴 */
            $(".post-regist").toggle("hidden");
            
        });

        /* 글 상세 */
        var preTarget;
        function contentView() {
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
        }

        /* 글 상세 - 답변 */
        $(".content-notice-box3").on("click", "button", function() {
            if(  $(this).attr("id") != 'btn-reply' ) return;

            var currentTarget = event.target.parentElement.nextElementSibling.nextElementSibling.classList;
            currentTarget.toggle("hidden");
        });

    </script>