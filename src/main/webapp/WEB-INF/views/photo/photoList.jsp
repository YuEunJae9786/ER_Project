<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/dongyeon.css">
</head>

 <section>
        <div class="container photoBody">
            <div class="info-title">
                <p>포토리뷰</p>
            </div>

            <div class="photoBox">
                <div class="photoList">
    
                    <div class="photo">
                        <img src="${pageContext.request.contextPath }/resources/img/kick1.jpg" alt=""  height="262px">
                    </div>

                    <div class="photo-content">
                        <div class="info">
                            <span>킥고잉 2세대</span>
                            <span>color only 1</span>
                        </div>
                    </div>
                </div>

                <div class="photoList">
                    <div class="photo">
                        <img src="${pageContext.request.contextPath }/resources/img/kick2.png" alt="" height="262px">
                    </div>

                    <div class="photo-content">
                        <div class="info">
                            <span>킥고잉 2세대</span>
                            <span>color only 1</span>
                        </div>
                    </div>
                </div>


                <div class="photoList">
                    <div class="photo">
                        <img src="${pageContext.request.contextPath }/resources/img/kick1.jpg" alt="" height="262px">
                    </div>

                    <div class="photo-content">
                        <div class="info">
                            <span>킥고잉 2세대</span>
                            <span>color only 1</span>
                        </div>
                    </div>
                </div>


                <div class="photoList">
                    <div class="photo">
                        <img src="${pageContext.request.contextPath }/resources/img/kick2.png" alt="" height="262px">
                    </div>

                    <div class="photo-content">
                        <div class="info">
                            <span>킥고잉 2세대</span>
                            <span>color only 1</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section>
    
    <div class="container box1">

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
    </section>

    <section class="photoIndex2">
        <div class="container">
            <hr>

            <table class="table table-hover photoTable">
                <thead>
                  <tr>
                    <th class="photoBno">Bno</th>
                    <th class="photoMini">Photo Review</th>
                    <th class="photoTitle">Title</th>
                    <th class="photoAdd">?</th>
                    <th class="photoAdd">?2</th>
                  </tr>
                  </tr>
                </thead>

                <tbody>
                  <tr class="table-line">
                    <td class="photoBno">10</td>
                    <td class="photoMini"><img src="img/kick5.png" alt="" width="40px"></td>
                    <td class="photoTitle">너무좋아요~</td>
                    <td class="photoAdd">넣을내용</td>
                    <td class="photoAdd">넣을내용</td>
                </tr>   
            </tbody>

                <tbody>
                    <tr class="table-line">
                      <td class="photoBno">9</td>
                      <td class="photoMini"><img src="img/kic1.jpeg" alt="" width="40px"></td>
                      <td class="photoTitle">굿~~</td>
                      <td class="photoAdd">넣을내용</td>
                      <td class="photoAdd">넣을내용</td>
                  </tr> 
                </tbody>

                  <tbody>
                    <tr class="table-line">
                      <td class="photoBno">8</td>
                      <td class="photoMini"><img src="img/kick6.png" alt="" width="40px"></td>
                      <td class="photoTitle">추천~</td>
                      <td class="photoAdd">넣을내용</td>
                      <td class="photoAdd">넣을내용</td>
                  </tr> 
                </tbody>


                  <tbody>
                    <tr class="table-line">
                      <td class="photoBno">7</td>
                      <td class="photoMini"><img src="img/kick6.png" alt="" width="40px"></td>
                      <td class="photoTitle">추천~</td>
                      <td class="photoAdd">넣을내용</td>
                      <td class="photoAdd">넣을내용</td>
                  </tr> 
                </tbody>


                  <tbody>
                    <tr class="table-line">
                      <td class="photoBno">6</td>
                      <td class="photoMini"><img src="img/kick6.png" alt="" width="40px"></td>
                      <td class="photoTitle">추천~</td>
                      <td class="photoAdd">넣을내용</td>
                      <td class="photoAdd">넣을내용</td>
                  </tr>
                </tbody>


                  <tbody>
                    <tr class="table-line">
                      <td class="photoBno">5</td>
                      <td class="photoMini"><img src="img/kick6.png" alt="" width="40px"></td>
                      <td class="photoTitle">추천~</td>
                      <td class="photoAdd">넣을내용</td>
                      <td class="photoAdd">넣을내용</td>
                  </tr>
                </tbody>
            </table>            
        </div>
    </section>

    <div class="container content-page">
        <ul class="paging">

            <!-- 이전 -->
            <li class="prev"><a href="#">이전</a></li>

            <!-- 페이지 -->
            <li class="num"><a href="#">1</a></li>
            <li class="num"><a href="#">2</a></li>
            <li class="num"><a href="#">3</a></li>
            <li class="num"><a href="#">4</a></li>
            <li class="num"><a href="#">5</a></li>

            <!-- 다음 -->
            <li class="next"><a href="#">다음</a></li>

            <!-- 글쓰기 -->
            <div class="btn-right">
                <button type="button" class="btn btn-signature2" id="regist" onclick="location.href='WriteReview.html'">글쓰기</button>
            </div>
        </ul>
    </div>
