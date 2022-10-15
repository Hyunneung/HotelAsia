<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<!--[if IE 8]><html class="no-js lt-ie9" lang="en"><![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>

<jsp:include page="../main/header.jsp"/>

<!-- 필수 JS/CSS { -->
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.1/jquery.min.js"></script>
<link type="text/css" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<!-- } -->

<!-- Basic Page Needs	================================================== -->
<title>객실 상세 페이지</title>
<meta name="description" content="Professional Creative Template" />
<meta name="author" content="IG Design">
<meta name="keywords"
	content="ig design, website, design, html5, css3, jquery, creative, clean, animated, portfolio, blog, one-page, multi-page, corporate, business," />
<!-- Mobile Specific Metas	================================================== -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="theme-color" content="#212121" />
<meta name="msapplication-navbutton-color" content="#212121" />
<meta name="apple-mobile-web-app-status-bar-style" content="#212121" />
<!-- Web Fonts 	================================================== -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	rel="stylesheet">
<!-- CSS	================================================== -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/room/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/room/css/font-awesome.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/room/css/ionicons.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/room/css/datepicker.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/room/css/jquery.fancybox.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/room/css/owl.carousel.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/room/css/owl.transitions.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/room/css/style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/room/css/colors/color.css" />
<!-- Favicons	================================================== -->
<link rel="icon" type="image/png" href="favicon.png">
<link rel="apple-touch-icon" href="apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="apple-touch-icon-114x114.png">
	
</head>
<body>
	
	<section class="banner_area">
	 <div class="booking_table d_flex align-items-center">
	     <div class="overlay bg-parallax" data-stellar-ratio="0.9" data-stellar-vertical-offset="0"
	         data-background=""></div>
	     <div class="container">
	         <div class="banner_content text-center">
	             <h6>Inspiring Senses & Touching place </h6>
	             <h2>Relax Your Mind</h2>
	         </div>
	     </div>
	 </div>
  </section>
	
	
	
	<div class="section padding-top-bottom z-bigger">
		<div class="section z-bigger">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 mt-4 mt-lg-0">
						<div class="section">
							<div class="customNavigation rooms-sinc-1-2">
								<a class="prev-rooms-sync-1"></a><a class="next-rooms-sync-1"></a>
							</div>
							<div id="rooms-sync1" class="owl-carousel">
								<div class="item">
									<img src="${pageContext.request.contextPath}/resources/room/img/gallery/2.jpg" alt="">
								</div>
								<div class="item">
									<img src="${pageContext.request.contextPath}/resources/room/img/gallery/3.jpg" alt="">
								</div>
								<div class="item">
									<img src="${pageContext.request.contextPath}/resources/room/img/gallery/4.jpg" alt="">
								</div>
								<div class="item">
									<img src="${pageContext.request.contextPath}/resources/room/img/gallery/5.jpg" alt="">
								</div>
								<div class="item">
									<img src="${pageContext.request.contextPath}/resources/room/img/gallery/6.jpg" alt="">
								</div>
								<div class="item">
									<img src="${pageContext.request.contextPath}/resources/room/img/gallery/7.jpg" alt="">
								</div>
								<div class="item">
									<img src="${pageContext.request.contextPath}/resources/room/img/gallery/8.jpg" alt="">
								</div>
								<div class="item">
									<img src="${pageContext.request.contextPath}/resources/room/img/gallery/9.jpg" alt="">
								</div>
							</div>
						</div>
						<div class="section">
							<div id="rooms-sync2" class="owl-carousel">
								<div class="item">
									<img src="${pageContext.request.contextPath}/resources/room/img/gallery/2-s.jpg" alt="">
								</div>
								<div class="item">
									<img src="${pageContext.request.contextPath}/resources/room/img/gallery/3-s.jpg" alt="">
								</div>
								<div class="item">
									<img src="${pageContext.request.contextPath}/resources/room/img/gallery/4-s.jpg" alt="">
								</div>
								<div class="item">
									<img src="${pageContext.request.contextPath}/resources/room/img/gallery/5-s.jpg" alt="">
								</div>
								<div class="item">
									<img src="${pageContext.request.contextPath}/resources/room/img/gallery/6-s.jpg" alt="">
								</div>
								<div class="item">
									<img src="${pageContext.request.contextPath}/resources/room/img/gallery/7-s.jpg" alt="">
								</div>
								<div class="item">
									<img src="${pageContext.request.contextPath}/resources/room/img/gallery/8-s.jpg" alt="">
								</div>
								<div class="item">
									<img src="${pageContext.request.contextPath}/resources/room/img/gallery/9-s.jpg" alt="">
								</div>
							</div>
						</div>
						<div class="section pt-5">
							<h5>${room.ROOM_TYPE}</h5>
							<p class="mt-3">Neque porro quisquam est, qui dolorem ipsum
								quia dolor sit amet, consectetur, adipisci velit, sed quia non
								numquam eius modi tempora incidunt ut labore et dolore magnam
								aliquam quaerat voluptatem. Ut enim ad minima veniam, quis
								nostrum exercitationem ullam corporis suscipit laboriosam, nisi
								ut aliquid ex ea commodi consequatur.</p>
						</div>
						<div class="section pt-4">
							<div class="row">
								<div class="col-12">
									<h5 class="mb-3">Overview</h5>
								</div>
								<div class="col-lg-6">
									<p>
										<strong class="color-black">Room size:</strong>47 - 54 sq m
									</p>
									<p>
										<strong class="color-black">Occupancy:</strong>Up to 4 adulds
									</p>
									<p>
										<strong class="color-black">View:</strong>Sea view
									</p>
									<p>
										<strong class="color-black">Smoking:</strong>No smoking
									</p>
								</div>
								<div class="col-lg-6">
									<p>
										<strong class="color-black">Bed size:</strong>King and regular
									</p>
									<p>
										<strong class="color-black">Location:</strong>Big room 2nd
										floor
									</p>
									<p>
										<strong class="color-black">Room service:</strong>Yes
									</p>
									<p>
										<strong class="color-black">Swimming pool:</strong>Yes
									</p>
								</div>
							</div>
						</div>
						<div class="section pt-4">
							<h5>Features</h5>
							<p class="mt-3">Neque porro quisquam est, qui dolorem ipsum
								quia dolor sit amet, consectetur, adipisci velit, sed quia non
								numquam eius modi tempora incidunt ut labore et dolore magnam
								aliquam quaerat voluptatem. Ut enim ad minima veniam, quis
								nostrum exercitationem ullam corporis suscipit laboriosam, nisi
								ut aliquid ex ea commodi consequatur.</p>
						</div>
					</div>
										<div class="col-lg-4 order-first order-lg-last">
						<div class="section background-dark p-4">
							<div class="row">
								<div class="col-12">
									<div class="input-daterange" id="flight-datepicker">
										<div class="row">
											<div class="col-12">
												<div class="form-item">
											       <form>
											 	    <h6 class="color-white mg-6">이용안내</h6><br>
											    	<div class="use_info">
											    	
											        	<button type="submit" class="btn float-center submit_next booking-button"id="searchBtn">예약하기</button><br>
											        	<button type="submit" class="btn float-center submit_next booking-button"id="searchBtn">문의하기</button>
											        
														<input type="hidden" name="hnum" value="">
													</div>
									     		 </form>
									     		</div>
									     	</div>
										</div>
									</div>
								</div>
								<div class="col-12">
									<div class="row">
										<div class="col-12 pt-4">
											<h6 class="color-white mg-6">가능인원</h6><br>
											<select name="adults" class="wide" disabled>
												<option data-display="성인:${room.ROOM_MAX}">성인</option>
											</select>
										</div>
										<div class="col-12 pt-4">
											<select name="children" class="wide" disabled>
												<option data-display="소아:${room.ROOM_MAX}">소아</option>
											</select>
										</div>
									</div>
								</div>
								<!-- <div class="col-12 pt-5">
									<h6 class="color-white mb-3">Max night price:</h6>
									<div class="selecteurPrix">
										<div class="range-slider">
											<input class="input-range" type="range" value="100" min="1"
												max="500">
											<div class="valeurPrix">
												<span class="range-value"></span>
											</div>
										</div>
									</div>
								</div> -->
								<div class="col-12 col-md-6 col-lg-12 pt-5">
									<h6 class="color-white mb-3">객실 타입</h6>
									<ul class="list">
										<li class="list__item"><label class="label--checkbox">
											<input type="checkbox" id="checkall" class="checkbox" name="checkall" checked>${room.ROOM_TYPE}</label></li>
									</ul>
								</div> 
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	

	
		
	
	
	<jsp:include page="../main/footer.jsp"/> 
	
	<!-- JAVASCRIPT    ================================================== -->
	<script src="${pageContext.request.contextPath}/resources/room/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/room/js/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/room/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/room/js/plugins.js"></script>
	<script src="${pageContext.request.contextPath}/resources/room/js/custom.js"></script>
	<!-- End Document================================================== -->
<script>

	
<!-- 캘린더 옵션  -->
//예약 가능한 방이 0개일 때 배열로 가져와 날짜 비활성화
var disabledDays = ["2022-10-20", "2022-10-21" , "2022-10-22"];
console.log(disabledDays.length);

//datepicker 기본 설정
     
	$.datepicker.setDefaults({
      closeText: "닫기",
      prevText: "이전달",
      nextText: "다음달",
      currentText: "오늘",
      monthNames: ["1월", "2월", "3월", "4월", "5월", "6월",
        "7월", "8월", "9월", "10월", "11월", "12월"
      ],
      monthNamesShort: ["1월", "2월", "3월", "4월", "5월", "6월",
        "7월", "8월", "9월", "10월", "11월", "12월"
      ],
      dayNames: ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"],
      dayNamesShort: ["일", "월", "화", "수", "목", "금", "토"],
      dayNamesMin: ["일", "월", "화", "수", "목", "금", "토"],
      weekHeader: "주",
      dateFormat: "yy.mm.dd", // 날짜형태 예)yy년 m월 d일
      firstDay: 0,
      isRTL: false,
      showMonthAfterYear: true,
      yearSuffix: "년",
      beforeShowDay: disableSomeDay
   	 
    })
	
    //시작 날짜를 오늘부터 선택 가능
    $('.datepicker').datepicker({
    	minDate:0
    }); 
    
    //시작일은 종료일 이후의 날짜 선택 불가, 종료일은 시작일 이전 날짜 선택 불가
    $('#sdate').datepicker();
    $('#sdate').datepicker("option", "maxDate", $("#edate").val());
    $('#sdate').datepicker("option", "onClose", function ( selectedDate ) {
        $("#edate").datepicker( "option", "minDate", selectedDate );
    });   
   
    //예약된 날짜 비활성화 함수
     function disableSomeDay(date){
        var month = date.getMonth()
        var dates = date.getDate();
        var year = date.getFullYear();
        
        for(i=0; i<disabledDays.length;i++){
        	if($.inArray(year + '-' +(month+1) + '-' +
        	dates,disabledDays) != -1) {
        		return [false];
        	}
        }
        return [true];
 
     };  
     
 
    /*  
     bookedDays = ["2022-10-10", "2022-10-20" , "2022-10-30"]

     function disableDates(){
     		 var m = date.getMonth() + 1;
              var d = date.getDate();
              var y = date.getFullYear();
                  for (i = 0; i < bookedDays.length; i++) {
                  if ($.inArray(y + '-' + m + '-' + d, bookedDays) != -1) {
                  return [false];
                  }
                  }
                  return [true];
     } */

    /* $('#edate').datepicker();
    $('#edate').datepicker("option", "minDate", $("#sdate").val());
    $('#edate').datepicker("option", "onClose", function ( selectedDate ) {
        $("#sdate").datepicker( "option", "maxDate", selectedDate );
    });  */
    
    
   /*  $('#edate').datepicker("option", "onClose", function (selectedDate) {
    	if(selectedDate.length==10)
       		$("#sdate").datepicker("option", "maxDate", selectedDate);
    	else
    		$("#sdate").datepicker("option", "maxDate", max);
    }); */
    
    
   /*  $('#sdate').datepicker("option", "onClose", function (selectedDate) {
    	if(selectedDate.length==10)
            $("#edate").datepicker("option", "minDate", selectedDate);
        else
            $("#edate").datepicker("option", "minDate", min);
    });  */
    
    
    /* $(".datepicker").change(function(){
	   console.log('datepicker선택');
	   console.log($(this).val());
	   console.log($(this).index());
	   index = $(this).index()
	   $("#d" +  index   ).val($(this).val());
   }) */
   
   
   
   
    
    
   
    	
   
    
    
    
    
   
  
    
    
	</script>
	<!-- JAVASCRIPT    ================================================== -->
	<!-- End Document================================================== -->
</body>
</html>