<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<section class="index-one">

        <div class="container">
            <div class="row">
                <div class="main-group">
                    <!-- <div class="main-title">아무거나 타지말고 비교하고 타자!</div> -->

                   
                      
               
                    <div class="main-logo"><img src="${pageContext.request.contextPath }/resources/img/logo2.png" alt=""></div>
                    <button type="button" class="btn btn-default mainBtn"> <span class="glyphicon glyphicon-search gly"></span>비교하기</button>
                    <button type="button" class="btn btn-default mainBtn"> <span class="glyphicon glyphicon-cloud gly"></span>리뷰쓰기</button>
                    <button type="button" class="btn btn-default mainBtn"> <span class="glyphicon glyphicon-tags gly"></span>제품상세</button>
                </div>

                <div class="sub-group">
                    <div class="num-title">현재 사용가능한 킥보드 수</div>
                    <div class="num-count">42</div>
                    
                </div>
            </div>
        </div>

    </section>

    <script>
        /* Demo purposes only */
$(".hover").mouseleave(
  function () {
    $(this).removeClass("hover");
  }
);
    </script>


    <section class="index-thr">

        <div class="container">
            <div class="row">
                <div class="map">
                    <aside class="col-md-4 map-left">
                        <div class="map-img"><img src="${pageContext.request.contextPath }/resources/img/kickimg.png" width="280" height="450" alt=""></div>
                    </aside>

                    <aside class="col-md-8 map-right">
                        <div class="map-info">
                            <p>언제나 어디서나</p>
                         </div>
                         <div class="map-con">당신과 가장 가까이에 있는 모든 킥보드를 찾아드립니다.</div>
                       
                         <button type="button" class="btn btn-default notBtn"> <span class="glyphicon glyphicon-bullhorn  gly"></span>Notice</button>
                         <button type="button" class="btn btn-default notBtn"> <span class="glyphicon glyphicon-shopping-cart gly"></span>FAQ</button>
                             <button type="button" class="btn btn-default notBtn"> <span class="glyphicon glyphicon-phone-alt  gly"></span>QNA</button>
                    </aside>
                </div>
            </div>
        
        
        </div>  
        </section>

    <section class="index-four">

       <div class="container">
           <div class="row">
               <div class="last-group">

                <div class="last-title">
                    <p>안전한 라이딩 꼭 지켜주세요 !</p>
                </div>
           
               </div>
               
           </div>
        </div>


    </section>
    
    <section class="index-two">
        
        <div class="container">
            <div class="row">
                
                <div class="pre">
                    <div>쉽고 빠르다</div>
                    <p>캥거루는 쉽고 빠르게 킥보드를 비교할 수 있습니다</p>
                </div>
                
                
                <div class="main-pre">
                    <div><img src="${pageContext.request.contextPath }/resources/img/phone.png" width=300px height="250px" alt=""></div>
                    <div class="pre-title">검색하고</div>
                    <div class="pre-con">나와 가까운 킥보드를 검색해보세요</div>
                </div>
                
                <div class="main-pre">
                    <div><img src="${pageContext.request.contextPath }/resources/img/kick.png" width="300px" height="250px" alt=""></div>
                    <div class="pre-title">비교하고</div>
                    <div class="pre-con">킥보드의 가격, 성능등을 비교해보세요</div>
                </div>
                
                <div class="main-pre">
                    <div class="pre-img"><img src="${pageContext.request.contextPath }/resources/img/phone.png" width="300px" height="250px" alt=""></div>
                    <div class="pre-title">리뷰쓰고</div>
                    <div class="pre-con">리뷰를 작성하고 포인트를 받아가세요</div>
                </div>
                
                
            </div>
            
        </div>

       
        </section>