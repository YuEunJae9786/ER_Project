<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<%-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta property="og:title" content="Kangaroo" />
<meta property="og:image" content="${pageContext.request.contextPath }/resources/img/kangaroo.png" />
<meta property="og:url" content="http://15.165.144.193" />
<meta property="og:description" content="보드 업체를 통합관리하여 가장 합리적인 가격으로 가장 가까이에있는 킥보드를 찾아빠르고 저렴하게  이용하자 !" /> --%>
<meta property="og:type" content="website">
<meta property="og:url" content="http://15.165.144.193">
<meta property="og:title" content="Kangaroo">
<meta property="og:description" content="보드 업체를 통합관리하여 가장 합리적인 가격으로 가장 가까이에있는 킥보드를 찾아빠르고 저렴하게  이용하자 !">
<!-- <meta property="og:image" content="http://deveroad.kr/img/kakao_logo_deveroad.png"> -->
<meta property="og:image" content="${pageContext.request.contextPath }/resources/img/kangaroo.png">


<title>Kangaroo</title>


	<!-- 부트스트랩 css파일참조 -->
	 <script src="https://www.littlesnippets.net/css/codepen-result.css"></script>
     <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
    
     <!-- 부트스트랩 js를 사용하기 위해서 jquery라이브러리 참조 -->
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
      <script src="https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.min.js"></script>
 
     <!-- 부트스트랩 js참조 -->
     <script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
     <!--개인 디자인-->
      <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/index.css"> 
     <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/basic.css"> 
    
     <link rel="preconnect" href="https://fonts.googleapis.com">
     <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
     <link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@300&display=swap" rel="stylesheet">
     
      <!-- 헤더 -->
     <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/header.css">  
     
     <!-- 파비콘 -->
     <link rel=" shortcut icon" href="${pageContext.request.contextPath }/resources/img/icon.ico">
     <link rel="icon" href="${pageContext.request.contextPath }/resources/img/icon.ico">

     
	 <style>
 	     *{
	        font-family: 'Gothic A1', sans-serif;
	     } 
	 </style>
 
</head>
<body>

	<tiles:insertAttribute name="header" />
	
	<tiles:insertAttribute name="body" />
	
	<tiles:insertAttribute name="footer" />

</body>
</html>