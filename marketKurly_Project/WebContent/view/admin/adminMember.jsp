<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>BIT KURLY</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />
<style>
    *{
        font-family: sans-serif;
    }  
    .com-sm-3{
        width: 500px;
    }
    
    
</style>
  <!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'> -->
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="../assets/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="../assets/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="../assets/css/bootstrap.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="../assets/css/owl.theme.default.min.css">

	<link rel="stylesheet" href="../assets/css/style.css">
	<link rel="stylesheet" href="../assets/css/index.css">
	
<!--	<link rel="stylesheet" href="css/bootstrap.css">-->


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
	<div id="header">
      <div id="userMenu">
         <!-- <div></div> 샛별배송 없애는 대신 div태그 가능-->
         <div class="sub_tit" style="font-size: 13px;">샛별배송</div>
         <ul class="list_menu">

            <c:if test="${empty sessionScope.loginUser.userId }">
            <li class="menu none_sub menu_login"><a href="../join/logIn.jsp"
               class="link_menu">로그인</a></li>
            <span class="bar"></span>
            <li class="menu none_sub menu_join"><a href="../join/signUp.jsp"
               class="link_menu">회원가입</a></li>
            <span class="bar"></span>
            </c:if>

            <c:if test="${'admin' == sessionScope.loginUser.userId }">
            <li class="menu none_sub menu_welcome">
             <a href="#" class="link_menu"><strong>[관리자]</strong></a></li>
            <li class="menu none_sub menu_admin"><a
               href="admin/productList.jsp" class="link_menu">사이트 관리</a></li>
            <span class="bar"></span>
            <li class="menu none_sub menu_logout"><a href="../join/logout"
               class="link_menu">로그아웃</a></li>
            <span class="bar"></span>
            </c:if>

            <c:if test="${'admin' != sessionScope.loginUser.userId && not empty sessionScope.loginUser.userId}">
            <li class="menu none_sub menu_welcome">
            <a href="#" class="link_menu"><strong>${sessionScope.loginUser.userName}님</strong></a></li>
            <span class="bar"></span>
            <li class="menu none_sub menu_cart"><a href="../cart/cart"
               class="link_menu">장바구니</a></li>
            <span class="bar"></span>
            <li class="menu none_sub menu_logout"><a href="../join/logout"
               class="link_menu">로그아웃</a></li>
            <span class="bar"></span>
             </c:if>

            <li class="menu lst dropdown"><a href="#" class="link_menu"><button
                     class="dropbtn">고객센터 ▼</button></a>
               <div class="dropdown-content">
                  <a href="../noticeboard/boardList.jsp">공지사항</a> 
                  <a href="../view/reviewboard/list">상품후기</a>
               </div>
            </li>
         </ul>
      </div>
   </div>
   
	<header style="padding-bottom: 3px">
		<div class="container text-center">
			<div class="fh5co-navbar-brand">
				 <a class="fh5co-logo" href="../index.jsp"><img src="../assets/images/logo.png" style="height: 110px"></a>
			</div>
			<div>
			<nav id="fh5co-main-nav" role="navigation" style="font-family: sans-serif">
				<ul>
		            <li><a href="../admin/productList.jsp">상품목록</a></li>
					<li><a href="../admin/adminMember.jsp">회원목록</a></li>
					<li><a href="../admin/adminBoard.jsp">게시판목록</a></li>
            	</ul>
			</nav>
            </div>
		</div>
	</header>
<!--전체 회원 관리 페이지-->
 <section style="margin: 0 100px 0 100px ;">
  <div class="boardList">
      <div class="board_title">
          <h3 class="title" style="font-family: sans-serif; font-weight: bold;">
              회원 목록
              
          </h3>
      </div>
  </div>


  <table class="table" style="margin-top: 30px; font-size: 17px; border-top: 2px solid #333;">
    <thead style="font-size: 13px; border-top: 3px; ">
          <th>아이디</th>
          <th>이름</th>
          <th>주소</th>
          <th>전화번호</th>
          <th>가입일</th>
          <th> </th>
    </thead>
    <tbody style="font-size: 13px">
        <tr >
            <td>eunbi</td>
            <td>김은비</td>
            <td>서울시</td>
            <td>010-1111-2222</td>
            <td>21-05-09</td>
            <td>[삭제]</td>
        </tr>
         <tr>
            <td>hong</td>
             <td>홍길동</td>
            <td>서울시</td>
            <td>010-1234-5678</td>
            <td>21-05-09</td>
            <td>[삭제]</td>
        </tr>   
    </tbody>
   </table>
   <hr/>
    
</section> 			
  
   
   <div class="text-center">
       <ul class="pagination pagination-sm">
           <li><a href="#">이전</a></li>
           <li><a href="#">1</a></li>
           <li><a href="#">2</a></li>
           <li><a href="#">3</a></li>
           <li><a href="#">4</a></li>
           <li><a href="#">5</a></li>
           <li><a href="#">다음</a></li>
       </ul>
   </div>


<!--푸터-->
	<footer>
		<div id="footer" class="fh5co-border-line">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center">
						<p>Copyright 2016 Free Html5 <a href="#">Neos</a>. All Rights Reserved. <br>Made with <i class="icon-heart3 love"></i> by <a href="http://freehtml5.co/" target="_blank">Freehtml5.co</a> / Demo Images: <a href="https://www.pexels.com/" target="_blank">Pexels</a> &amp; <a href="http://plmd.me/" target="_blank">PLMD</a> </p>
						<p class="fh5co-social-icons">
							<a href="#"><i class="icon-twitter-with-circle"></i></a>
							<a href="#"><i class="icon-facebook-with-circle"></i></a>
							<a href="#"><i class="icon-instagram-with-circle"></i></a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Stellar -->
	<script src="js/jquery.stellar.min.js"></script>

	<!-- Main JS (Do not remove) -->
	<script src="js/main.js"></script>

	</body>
</html>

