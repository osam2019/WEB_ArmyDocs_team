<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<!-- #####################################################################[헤더 시작] -->
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
	<script type="text/javascript" src="/resources/js/jquery.flip.min.js"></script>
	<script type="text/javascript" src="/resources/js/iscroll.js"></script>
	<script src="/resources/bxslider/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="/resources/js/script.js"></script>
	
	<!-- fontawesome -->
	<link rel="stylesheet" href="/resources/fontawesome/css/all.min.css"/>
    <script src="/resources/fontawesome/js/fontawesome.min.js"></script> 
	
</head>
<!-- #####################################################################[헤더 끝] -->
<body>
	<section id="wrapper">
	
		<!-- #####################################################################[상단 시작] -->
		<jsp:include page="./include/header2.jsp"/>
		<!-- #####################################################################[상단 끝] -->
		<!-- #####################################################################[컨테이너 시작] -->
		<section class="container push-top">	
			<div class="container_inner">	
				
				
				<!-- #####################################################################[레이어1] -->
				<form>
					<div class="pdd-top_bottom-50">
						
						<div class="inner">
							
							<div class="normal-title-head">  
								<h1 class="tit">개인정보 처리방침</h1>
								<span class="cat">Privacy statement</span>
							</div>
							
							<div class="terms-txt-group">
								
								
								
							</div>
							
							
						</div>
					
					</div>
				</form> 
				
				
			</div>
		</section>
		<!-- #####################################################################[컨테이너 끝] -->
		<!-- #####################################################################[하단 시작] -->
		<jsp:include page="./include/footer.jsp"/>
		<!-- #####################################################################[하단 끝] -->
	</section>
	
	<script>
    
        /*getUserInfo(function(data){
            var c = '<li><a href="/my">마이페이지</a></li>';
            $("#header-priv").html(c);
        }, function(err){
            console.log("로그아웃 상태입니다.");
        });*/
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
