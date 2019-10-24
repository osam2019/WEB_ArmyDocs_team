<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	
	<meta charset="UTF-8"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/> 
    
	
	<title>ArmyDocs</title>
	
	<link type="text/css" rel="stylesheet" href="/resources/css/normalize.css"/>
	<link rel="stylesheet" href="/resources/bxslider/jquery.bxslider.css">
	<link type="text/css" rel="stylesheet" href="/resources/css/hamburgers.css"/>   
	<link type="text/css" rel="stylesheet" href="/resources/css/global.css"/>
	<link type="text/css" rel="stylesheet" href="/resources/css/animate.css"/>
    
    <link rel="shortcut icon" href="/resources/img/favicon.png" type="image/x-icon"/> 
	
	<script type="text/javascript" src="/resources/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.form.js"></script> 
	<script type="text/javascript" src="/resources/js/jquery.flip.min.js"></script>
	<script type="text/javascript" src="/resources/js/iscroll.js"></script>
	<script src="/resources/bxslider/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="/resources/js/script.js"></script>
	
	<!-- fontawesome -->
	<link rel="stylesheet" href="/resources/fontawesome/css/all.min.css"/>
    <script src="/resources/fontawesome/js/fontawesome.min.js"></script> 
	
</head>
<body>
	<section id="wrapper">
	
		<!-- #####################################################################[상단 시작] -->		
		<jsp:include page="./include/header2.jsp"/>
		<!-- #####################################################################[상단 끝] -->
		<!-- #####################################################################[컨테이너 시작] -->
		<section class="container push-top">	
			<div class="container_inner">	
				
				<div class="inf-mod-wrapper">
					<div class="inner">
						
						<div class="normal-title-head">
							<h1 class="tit">개발팀 소개</h1>
							<span class="cat">Introduce armydocs developers</span>
						</div>
						  
					</div>   
				</div>
				
				<div class="nable-intro-wrapper">
						
					<div class="inner">
						
						
						<div class="intro-pg-box" style="margin-top: 50px; min-height: 480px; ">
							
							<div class="contents-box p613" style="padding-right: 0px; padding-left: 613px;">
								<h2>&#60;육군본부 개발장교 김은진&#62;</h2>
								<p style="margin-top: 10px;">

									육군본부 정보체계관리단 전산체계 개발과 S/W개발장교<br/>
									중위 (2019.10)<br/>
									
								</p>
								<h2 style="margin-top: 30px;">&#60;국방부 SW개발병 이지수&#62;</h2>
								<p style="margin-top: 10px;">

									계룡대근무지원단 지원연대 관리대대 2중대 14분대<br/>
									육군본부 정보체계관리단 전산체계 개발과 S/W개발병<br/>
									일등병 (2019.10)<br/>
									
								</p>
								<h2 style="margin-top: 30px;">&#60;국방부 SW개발병 정희성&#62;</h2>
								<p style="margin-top: 10px;">

									계룡대근무지원단 지원연대 관리대대 2중대 14분대<br/>
									육군본부 정보체계관리단 전산체계 운영지원과 S/W개발병<br/>
									일등병 (2019.10)<br/>
									
								</p>
								<h2 style="margin-top: 30px;">&#60;국방부 SW개발병 최준영&#62;</h2>
								<p style="margin-top: 10px;">

									계룡대근무지원단 지원연대 관리대대 2중대 14분대<br/>
									육군본부 정보체계관리단 전산체계 개발과 S/W개발병<br/>
									일등병 (2019.10)<br/>
									
								</p>
							</div>	
							<div class="pic-area" style="left: 0; right: auto;">
								<img src="/resources/img/vv100.png" style="width: 553px;"/>
							</div>						
						</div>
						
						<div class="mid-hori-line" style="margin-top: 100px;"></div>
						
						
						
						
						
						
					</div>
				
				</div>
				
				
				
				
			</div>
		
		</section>
		<!-- #####################################################################[컨테이너 끝] -->
		<!-- #####################################################################[하단 시작] -->
		<jsp:include page="./include/footer.jsp"/>
		<!-- #####################################################################[하단 끝] -->
	</section>
	
	<script>
    
        getUserInfo(function(data){
    
            var c = '<li><a href="/my">대시보드</a></li><li><a href="/logout">로그아웃</a></li>';
            $("#header-priv").html(c);


        }, function(err){
            var c = '<li><a href="/join">회원가입</a></li><li><a href="/login">로그인</a></li>';
            $("#header-priv").html(c);
            console.log("로그아웃 상태입니다.");
        });
        
    </script>
	
</body>
</html>
