<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	
		<jsp:include page="./include/header.jsp"/>
		<section class="container main">	
			<div class="container_inner">	
				
				<div class="layer add-layer">
					<div>	
						<div id="slider1"><!-- slide start -->				
							<div class="slider" style="margin: 0px auto;">
								<div class="banner-wrapper">
									<div class="in">
										<div class="centerbox"> 
										
											<div class="bn-ment">
		                                        <strong style="font-weight:400;">아미독스</strong>는 <strong style="font-weight:500;">편리</strong>합니다.<br/>
												누구든지! 언제! 어디서든!<br class="mobile-hidden"/>
												<strong style="font-weight:400;">설문에 참여</strong>할 수 있습니다.
											</div>
											<p class="bn-ment2">  
												아미독스 프로젝트는 군 내에서 수기로 시행되는 각종 설문조사를<br class="mobile-hidden"/>전산화하여 군 인트라넷에 구현한 웹 사이트 체계입니다.    
											</p>
											<div class="bn-btn-wrap">
												<a class="comm-btn-style red" href="/my/survey"><i style="position: relative; top: 1px;" class="fa fa-sticky-note"></i> 설문 등록하기</a>
											</div> 
										</div> 
									</div>      
								</div>
								<div class="banner-wrapper" style="background-image: url(/resources/img/vs2.jpg)">
									<div class="in">
										<div class="centerbox"> 										
											<div class="bn-ment">											
												전 장병 <strong style="font-weight:400;">누구나</strong> 설문을 등록하거나 <br class="mobile-hidden"/>
												참여하고, 결과를 <strong style="font-weight:400;">분석</strong>할 수 있습니다.		                                        
											</div>
											<p class="bn-ment2">  
												아미독스 프로젝트는 군 내에서 수기로 시행되는 각종 설문조사를<br class="mobile-hidden"/>전산화하여 군 인트라넷에 구현한 웹 사이트 체계입니다. 
		                                        <br class="mobile-hidden"/>부대 내 각종 설문 작성 및 결과를 분석하는 관리자와 <br class="mobile-hidden"/>
												설문 및 수요조사에 참여하는 사용자에게 각각 다른 기능을 제공합니다.
											</p>
											<div class="bn-btn-wrap">
												<a class="comm-btn-style " href="/my/survey"><i style="position: relative; top: 1px;" class="fa fa-sticky-note"></i> 설문 등록하기</a>
											</div> 
										</div> 
									</div>      
								</div>
							</div>
						</div><!-- slide end -->
					</div>
				</div>
				
				<div style="background: #f2f2f2;">
					<div class="inner" style=" padding-bottom: 70px;">
						<div class="layerIntro">
							<div class="t">진행중인 설문</div>
							<div class="s">현재 참여 가능한 <strong class="card-sum">1,892</strong>개의 설문이 진행 중입니다.</div>
							<div class="i"><i class="fa fa-arrow-down"></i></div>
						</div>
						<ul class="card-style-wrapper"></ul>
						<div style="text-align: center; margin-top: 30px;">
							<a class="comm-btn-style red" href="/my">더보기</a>
						</div>
					</div>
				</div>
				
				<div class="nable-intro-wrapper np">
						
					<div class="inner">
						
						<div class="mid-hori-line intro"></div>
						
						<div class="intro-pg-box">
							<div class="pic-area l">
								<img src="/resources/img/vv3.jpg" style="width: 553px;"/>
							</div>	
							<div class="contents-box p613 r">
								<h2>&#60;아이템 개요&#62;</h2>
								<p style="margin-top: 10px;">
									아미독스는 군 내에서 수기로 시행되는 각종 설문조사를 전산화하여 구현한 웹 사이트입니다. 
									주 기능은 설문 작성 및 결과를 분석하는 관리자와 설문에 참여하는 사용자에 따라 나뉩니다.<br/>
									<br/>
									관리자는 승인받은 간부들로 구성되며, 사단 및 대대 등의 규모나 익명성 여부를 지정해 설문을 작성할 수 있습니다. 
									등록된 설문은 해당 부대 소속의 사용자들에게 알림을 보내 참여를 유도하고, 관리자는 실시간 설문 참여 현황을 확인할 수 있습니다.
									<br/>
									사용자는 관리자에게 승인받은 병사들로 구성되며, 지정 기간 내에 등록된 설문을 제출하거나 수정할 수 있습니다. 
									또한 자신이 속한 부대를 대상으로 설문조사를 시행할 수도 있습니다.
									<br/>
									관리자와 사용자는 간단한 조작으로 객관식, 서술형 등 다양한 형식의 설문을 작성할 수 있으며, 기존의 설문 파일을 업로드해 지난 설문 이력을 추가할 수도 있습니다. 
									완료된 설문에서는 빅데이터 분석을 통해 그래프화된 다양한 통계적 수치를 확인할 수 있으며, 엑셀 등의 형식으로 저장 가능합니다.<br/>
								</p>
							</div>				
						</div>
						
						<div class="mid-hori-line intro"></div>
						
						<div class="intro-pg-box">
							<div class="pic-area">
								<img src="/resources/img/vv2.jpg" style="width: 553px;"/>
							</div>
							<div class="contents-box p613">
								<h2>&#60;개발 전망&#62;</h2>
								<p style="margin-top: 10px;">
									아미독스는 웹 기반 서비스로, 웹 서버는 Tomcat과 Spring을 기반으로 Restful 하게 구축하며, POI 라이브러리를 활용해 엑셀 파일을 관리합니다. 
									DB는 MySQL을 사용하고, Hadoop으로 집계된 데이터를 분석합니다. 또한 ELK Stack을 사용해 대규모 요청에 따른 서버 상태를 모니터링합니다.<br/>
									<br/>
									웹 클라이언트는 Vue.js를 활용해 SPA로 구축하며, Vuetify와 Webpack, Babel을 사용해 다양한 브라우저를 지원하는 반응형 웹앱을 지원합니다. 
									추가로 애플리케이션도 추가 개발하여 모바일 편의성을 극대화할 예정입니다.<br/>
									<br/>
									아미독스 프로젝트가 국군에서 공식적으로 운영되는 체계로 채택된다면, 수많은 장병들을 대상으로 집계된 데이터들이 통합된 환경에서 관리 및 운용될 수 있으며, 현재 4차 산업혁명 시대를 맞아 진행 중인 여러 빅데이터 및 머신러닝 프로젝트에서 더 유의미한 정보로 가공되어, 대한민국 국군의 발전에 큰 기여를 할 수 있을 것입니다.
									<br/>
								</p>
							</div>							
						</div>
						
						<div class="mid-hori-line intro"></div>
						
						<div class="intro-pg-box">
							<div class="pic-area l">
								<img src="/resources/img/vv1.jpg" style="width: 553px;"/>
							</div>	
							<div class="contents-box p613 r">  
								<h2>&#60;사업 전망&#62;</h2>
								<p style="margin-top: 10px;">
									현재 군 내 설문조사는 수기로 작성한 뒤 담당자가 해당 내용을 일일이 타이핑해 취합되고 있습니다. 
									이러한 단순 업무를 위해 출장 및 야근을 하는 병사들이 많은데, 아미독스는 이 과정을 전산화하여 불필요한 업무와 비용을 줄이는 것을 목표로 합니다.<br/>
									<br/>
									단순히 결과만 출력하는 기존 설문조사와 다르게 아미독스는 빅데이터 분석을 통해 여러 통계수치를 그래프화해, 부대에서 특정 사업을 기획할 때 세부사항을 결정하는 데 도움이 됩니다. 
									추후 아미독스의 이용률이 높아져 커뮤니티화된다면, 병사 개개인의 활용성도 커질 것으로 보입니다.<br/>
									<br/>
									그 사례로, 최근 개최된 국방 K-Startup과 같은 군 내 공모전에 참여한 병사들이 실제 기획 단계에서 아이디어에 대한 실수요를 예측 못 해 탈락하는 경우가 많았는데, 개인이 중대 이상의 수요를 조사하는 건 어렵기 때문입니다. 
									따라서 병사들끼리도 수요조사가 가능하면, 대한민국 국군의 발전에 기여하는 다양한 아이디어 창출과 새로운 소통의 장을 만들 수 있을 것입니다.<br/>									
								</p>
							</div>				
						</div>		
						
					</div>
				
				</div>
				
				<div class="layer add-layer2" id="counting" style="border-top: 1px solid #E7E8EF; background: #f2f2f2;">
					<div class="inner">	
						
						<div class="layerIntro">
							<div class="t">CONTACT US</div>
							<div class="s">아미독스 플랫폼에서 <strong>궁금하신</strong> 문의 사항을 질문 해주세요.</div>
							<div class="i"><i class="fa fa-arrow-down"></i></div>
						</div>
						
						<form>
							<div class="board-write-wrapper" style="margin-top: 30px;">
								<div>
									<div class="title-wrap">									
										<div class="default-inputbox" style="width: 49%;height:56px;">
											<input type="text" placeholder="소속부대"/>
										</div>
										<div class="select_box" style="width: 49%;height:56px;">
											<div style="width: 100%; box-sizing: border-box;">
												구분
											</div>
											<ul style="width: 100%;box-sizing: border-box;">
												<li><a>육군</a></li> 
												<li><a>공군</a></li>
												<li><a>해군</a></li> 
											</ul> 
										</div>
									</div>
									<div class="title-wrap" style="margin-top: 20px;">
										<div class="default-inputbox" style="width: 49%;height:56px;float:left;">
											<input type="text" placeholder="이름"/>
										</div>
										<div class="default-inputbox" style="width: 49%;height:56px;">  
											<input type="text" placeholder="연락처"/>
										</div>
									</div>
									<div class="note-wrap">
										<div class="default-textarea" style="height: 350px;">
											<textarea placeholder="내용을 입력해주세요"></textarea>
										</div>
									</div>
									<div class="submit-wrap">																
										<div class="terms-radio">
											<input class="radio-style" type="checkbox" id="chk1"/>
											<label for="chk1">개인정보 보호정책 동의</label>
										</div>
										<a class="comm-btn-style red">문의하기</a>
									</div>
								</div>
							</div>
						</form>
						
						<div style="height: 100px;"></div>
						
						
					</div>
				</div>
				
			</div>
		
		</section>
		<jsp:include page="./include/footer.jsp"/>
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
        
        function loadSur() {
			loadAni(true);
			
			$.ajax({ 
				type : "GET",
				dataType : "JSON",	
				data : {
					"type" : "progress"
				},
				async: true,
				url : "/surveys",
				success : function(data){  
					//console.log(data);
					var content = "";
					var i = 0;
					$.each(data.data, function(index, value){	
						i++;
						if(i<=8){
							content += '<li class="card-li">';
							content += '<div><div class="boxx" style="background-image: url('+value.coverImg+'), url(/resources/img/bg-login.jpg);">';
							content += '<div class="bg-overlay">';
							
							content += '<div class="top-line">';
							content += '<i style="font-size: 18px;" class="fa fa-spinner"></i>';
							content += '<span class="right ment1">'+(value.name)+'</span>';
							content += '</div>';
							
							content += '<div class="top-line">';
							content += '<span class="left ment2">'+value.regdate.split(" ")[0]+'</span>';
							content += '<span class="right ment2">'+value.station+'</span>';
							content += '</div>';
							
							content += '<div class="txt-visual">';
							content += '<i class="fa fa-box" style="font-size: 24px;"></i>';
							content += '<h2 class="tit">' + (value.title) + '</h2>';
							content += '<div><a class="comm-btn-style red" href="/process/'+value.idx+'">참여하기</a></div>';
							content += '<p class="desc">종료일까지 <span class="emp">'+value.dDay+'일</span> 남았습니다</p>';
							content += '</div></div></div></div>';
							content += '</li>';
						}
					});
					$(".card-sum").text(data.data.length);
					$(".card-style-wrapper").html(content);
					loadAni(false);
				}, 
				error : function(err, err2, err3) {			
					console.log("[ERROR]");
					console.log(err); console.log(err2); console.log(err3); 	
					loadAni(false);
					createPopup("exclamation-triangle","오류가 발생했습니다.<br/>자세한 사항은 문의를 주세요.", "bounceInDown");
				} 
			});
		}
		loadSur();    
    </script>
	
</body>
</html>
