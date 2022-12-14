<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<meta name="_csrf" content="${_csrf.token }">
<meta name="_csrf_header" content="${_csrf.headerName }">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/linericon/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/nice-select/css/nice-select.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/owl-carousel/owl.carousel.min.css">
     <!-- main css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/responsive.css">
    <!-- ๋ก๊ทธ์์ script -->
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script>
	$(function() {
		$("#logout").click(function(event) {
			event.preventDefault();
			$("form[name=logout]").submit();
		})
	})
	</script>
<!--================Header Area =================-->
 <header class="header_area navbar_fixed ">
     <div class="container">
         <nav class="navbar navbar-expand-lg navbar-light">
             <!-- Brand and toggle get grouped for better mobile display -->
             <a class="navbar-brand logo_h" href="${pageContext.request.contextPath }/"><img src="${pageContext.request.contextPath}/resources/image/logo.png" alt=""></a>
             <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                 <span class="icon-bar"></span>
                 <span class="icon-bar"></span>
                 <span class="icon-bar"></span>
             </button>
             <!-- Collect the nav links, forms, and other content for toggling -->
             <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                 <ul class="nav navbar-nav menu_nav ml-auto">
                     <li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath}/">Home</a></li>
                     <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/intro/intro">์  ๊ฐ</a></li>
                     <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/room/roomList">๊ฐ  ์ค</a></li>
                     <li class="nav-item submenu dropdown">
                         <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">์ปค๋ฎค๋ํฐ</a>
                         <ul class="dropdown-menu">
                             <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/notice/list">๊ณต์ง์ฌํญ</a></li>
                             <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/question/list">๋ฌธ์์ฌํญ</a></li>
                             <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/review/reviewList">ํ๊ธฐ๊ฒ์ํ</a></li> <!-- ํ๋ฅ: ๋ฆฌ๋ทฐ๊ฒ์ํ ๊ฒฝ๋ก ์์? -->
                         </ul>
                     </li> 
                 </ul>
                 
             	<sec:authorize access="isAnonymous()">
             	   <ul class="nav navbar-nav menu_nav ml-auto">
		            <li class="nav-item"><a href="${pageContext.request.contextPath}/member/login" class="nav-link">๋ก๊ทธ์ธ</a></li>
		            <li class="nav-item"><a href="${pageContext.request.contextPath}/member/join" class="nav-link">ํ์๊ฐ์</a></li>
		      	  </ul>
             	</sec:authorize>
             	
	    		<sec:authorize access="isAuthenticated()">
    			   <sec:authentication property="principal" var="pinfo"/>
    			  	 <ul class="nav navbar-nav menu_nav ml-auto">
				      <li class="nav-item">
				      	<form action="${pageContext.request.contextPath}/member/logout" method="post" name="logout">
				      		<a class="nav-link" href="#" id="logout">
				      			<span id="loginid">${pinfo.username}</span>๋(๋ก๊ทธ์์)
				      		</a>
				      		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
				      	</form>
				      </li>
					      
				      <c:if test="${pinfo.username=='admin' }">
	                     <li class="nav-item submenu dropdown">
	                         <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">๊ด๋ฆฌ์ํ์ด์ง</a>
	                         <ul class="dropdown-menu">
	                             <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/notice/list">๊ณต์ง์ฌํญ</a></li>
	                             <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/question/list">๋ฌธ์์ฌํญ</a></li>
	                             <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/member/userlist">ํ์๋ฆฌ์คํธ</a></li>
	                         </ul>
	                     </li> 
			     	  </c:if>
			     	  
				      <c:if test="${pinfo.username!='admin' }">
	                     <li class="nav-item"><a href="${pageContext.request.contextPath}/mypage/reserve" class="nav-link">๋ง์ดํ์ด์ง</a></li>
			     	  </c:if>
			     	</ul>
		     	</sec:authorize>
            </div>
         </nav>
     </div>
 </header>
 <!--================Header Area =================-->