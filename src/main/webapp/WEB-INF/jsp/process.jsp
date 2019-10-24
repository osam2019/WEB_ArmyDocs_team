<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	<script type="text/javascript" src="/resources/js/jquery.form.js"></script> 
	<script type="text/javascript" src="/resources/js/iscroll.js"></script>
	<script src="/resources/bxslider/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="/resources/js/script.js"></script>
	
	<!-- fontawesome -->
	<link rel="stylesheet" href="/resources/fontawesome/css/all.min.css"/>
    <script src="/resources/fontawesome/js/fontawesome.min.js"></script> 
	
</head>
<!-- #####################################################################[헤더 끝] -->
<body>
	<section id="wrapper" class="no-fix-menu" style="height: 100%; padding-bottom: 0px;">
		
		
		<!-- <div id="pop02" class="pop "> 
			<div>    
				<div class="bx">
					<div class="popbx">
						<div class="contentbox">  
							  
							<a class="btn-close" onclick="togglePop02();"><i style="font-size: 35px;" class="fa fa-times-circle"></i></a>
							
							<div class="normal-title-head">
								<h1 class="tit">알림</h1>
								<span class="cat">Announce at ArmyDocs</span>
							</div>
							<div style="text-align: center;">
								<div style="margin: 35px 0px 45px 0px; text-align: ; font-size: 17px; color: #000;">
									
									<div style="text-align: center; margin-bottom: 10px;">
										<i class="fa fa-check-circle" style="color: #f63c48; font-size: 40px;"></i>
									</div>
									설문 조사를 모두 마쳤습니다.<br/>
									
									
								</div>  
								<a class="comm-btn-style small black" href="javascript:togglePop02()">확인</a>
								&nbsp;&nbsp;&nbsp;  
								<a class="comm-btn-style red small" href="javascript:togglePop02()">마이페이지</a>
							</div>
									
						</div>  
					</div>
				</div>
			</div>
		</div> -->
		
		
		
		<!-- #####################################################################[상단 시작] -->
		<jsp:include page="./include/header2.jsp"/>
		<!-- #####################################################################[상단 끝] -->
		<!-- #####################################################################[컨테이너 시작] -->
		
		<style>
		.surveybox {
			height: 100%; box-sizing: border-box;
			
		}
		.surveybox:after {display: block;visibility: hidden;height: 0;font-size: 0;clear: both;content: '';}
		.surveybox .r {
			float: right; width: 50%; height: 100%; box-sizing: border-box;
		}
		.surveybox .l {
			float: left; width: 50%; height: 100%; box-sizing: border-box;
			background-image: url(/resources/img/bg-login.jpg); 
			background-position: center;
		}
		.surveybox .emptybox {height: 100%; width: 100%; position: relative; box-sizing: border-box; }
		.surveybox .emptybox.blk {background: rgba(0,0,0,0.5);}
		.surveybox .visualText {
			font-size: 18px; font-weight: bold;
			color: #fff; text-align: center; 
/* 			position: absolute; */
/* 			top: 0; left: 0;  */
			left: 0; right: 0; margin: auto;
			width: 500px;
		}
		.surveybox .startbox {
			font-size: 18px; font-weight: bold;
			color: #000; text-align: center; 
			width: 500px; margin: auto; right: 0; left: 0;
		}
		.qbox {text-align: left;}
		.qbox .title {font-size: 22px; position: relative;}
		.qbox .title .numb {
			position: absolute; top: -8px; left: -40px; 
			color: #f63c48; font-weight: bold; font-size: 30px;
		}
		.qbox .rowItems {display: block;text-align: left;margin-top: 30px; }
		.qbox .rowItems li {margin: 20px 0px;}
		.qbox .progressbar {position: relative;margin-bottom: 30px;}
		.qbox .progressbar .numb {
			position: absolute; top: -12px; left: 0px; 
			font-weight: bold; font-size: 20px;
		}
		.qbox .progressbar .numb strong {color: #f63c48;}
		.qbox .progressbar .bar {
			background: #717171; display: block; height: 5px; margin-left: 55px;
		}
		.qbox .progressbar .bar .p {width: 30%; height: 100%; background: #f63c48;}
		</style>
		<section class="container push-top surveybox">	
			<div class="l">
				<div class="emptybox blk bounceInLeft animated">
					
					<div class="visualText centerbox">
					
						<strong style="font-size: 32px;" id="sd-title"></strong><br/>
						<br/>
						<div style="text-align: left; font-size: 20px;">
							설문기간: <span id="sd-date">2019.10.01 ~ 2020.10.30</span><br/>
							문항 수: <span style="color: #f63c48" id="sd-itemcount">10</span>항<br/>
						</div> 
						<br/>
						<div style="text-align: left;" id="sd-summary">
							아미독스 프로젝트는 군 내에서 수기로 시행되는 각종 설문조사를
							전산화하여 군 인트라넷에 구현한 웹 사이트 체계입니다.
							아미독스 프로젝트는 군 내에서 수기로 시행되는 각종 설문조사를
							전산화하여 군 인트라넷에 구현한 웹 사이트 체계입니다.<br/>
						</div>
						<br/><br/>
						
						<a class="comm-btn-style " href="/my"><i style='top: 1px;position: relative;' class="fa fa-arrow-left"></i> 돌아가기</a>&nbsp;&nbsp;
<!-- 						<a class="comm-btn-style red">통계 보기 <i style='top: 1px;position: relative;' class="fa fa-info-circle"></i></a> -->
						
					
					</div>
					
				</div>
			</div>
			<div class="r">
				
				<div class="emptybox bounceInRight animated">
					
					<div class="startbox centerbox">
						
						<div class="qbox">
							
							<div class="progressbar">
								<span class="numb"><strong class="curr-step">3</strong>/<span class="max-step">10</span></span>
								<div class="bar"><div class="p perc"></div></div>
							</div>
							
							<div id="pro"><!-- 내용 동적 추가 --></div>
							
							<!-- 
							<div class="stepbox">
								<div class="title">김 선생이 사용한 말하기 방법을 사용하여 다음 학생에게 해줄 수 있는 말로 적절한 것은?</div>
								<ul class="rowItems">
									<li>
										<div style="height: 300px;" class="default-textarea">
											<textarea class="" placeholder="질문에 대한 답변 내용을 입력하세요."></textarea>
										</div>										
									</li>
								</ul>
							</div>
							
							<div class="stepbox displayNone">
								<div class="title">김 선생이 사용한 말하기 방법을 사용하여 다음 학생에게 해줄 수 있는 말로 적절한 것은?</div>
								<ul class="rowItems">
									<li>
										<input class="radio-style" type="radio" id="i1"  name="ans">
										<label for="i1" style="margin-left: 20px;">네가 내 손에 죽고 싶구나?</label>
									</li>
									<li>
										<input class="radio-style" type="radio" id="i12"  name="ans">
										<label for="i12" style="margin-left: 20px;">나는 50점 받았다. 잘난 척하니 속이 후련하니?</label>
									</li>
									<li>
										<input class="radio-style" type="radio" id="i13"  name="ans">
										<label for="i13" style="margin-left: 20px;">평균 90점이 못 본 거라니, 너 정신이 이상하구나</label>
									</li>
									<li>
										<input class="radio-style" type="radio" id="i14"  name="ans">
										<label for="i14" style="margin-left: 20px;">마음이 아프겠다. 열심히 해서 다음 시험에는 3만점 맞길 바란다.</label>
									</li>
									<li>
										<input class="radio-style" type="radio" id="i15" name="ans">
										<label for="i15" style="margin-left: 20px;">다른 데서 그런 식으로 말하면 너는 학교 폭력의 피해자가 될지도 몰라.</label>
									</li>
								</ul>
							</div>
				 -->
						</div>
						<div style="overflow: hidden; margin-top: 60px;">
							
							<a id="prevbtn" onclick="prevStep()" class="comm-btn-style black" style="float: left;">
								<i style='top: 1px;position: relative;' class="fa fa-arrow-left"></i> 이전
							</a>
							
							&nbsp;&nbsp;
							
							<a id="nextbtn" onclick="nextStep()" class="comm-btn-style red" style="float: right;">
								다음 <i style='top: 1px;position: relative;' class="fa fa-arrow-right"></i>
							</a>
						
						</div>
						
						
					
					</div>
					
				</div>
				
			</div>
		</section>
		<!-- #####################################################################[컨테이너 끝] -->
		<!-- #####################################################################[하단 시작] -->
        <%-- <jsp:include page="./include/footer.jsp"/> --%>
		<!-- #####################################################################[하단 끝] -->
		
	</section>


    <script>
    
    //createPopup('check-circle', '설문 조사를 모두 마쳤습니다.', 'bounceInDown', '확인', '/my');
    
    // 설문 기본정보 로드
    function loadSurveyBasicInfo() {
		
		$.ajax({ 
			type : "GET",
			dataType : "JSON",				
			async: false,
			url : "/survey/${surveyInfo.idx}",	
			beforeSend : function(xhr){
				xhr.setRequestHeader("authorization", getCookie("token"));
				xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
			},
			success : function(data){							
				console.log(data);
				
				$("#sd-summary").html(data.data.note);  
				$("#sd-title").html(data.data.title);
				$("#sd-date").html( data.data.startdate.split(" ")[0] + " ~ " + data.data.enddate.split(" ")[0] );
				$("#sd-itemcount").html(data.data.itemCount);
				if(data.data.coverImg!=null && data.data.coverImg!="") {
					$(".surveybox .l").css("background-image", "url("+data.data.coverImg+")");  
				}
				
				
			}, 
			error : function(err, err2, err3) {	
				createPopup("exclamation-triangle","오류가 발생했습니다.<br/>자세한 사항은 문의를 주세요.", "bounceInDown");
				console.log("[ERROR]");
				console.log(err); console.log(err2); console.log(err3); 
			} 
		});
	}	
    
    // 답변 제출
    function saveAnswer() {
		
		loadAni(true);
	
		let today = new Date();
		let year = today.getFullYear(); 	// 년도
		let month = today.getMonth() + 1;  	// 월
		let date = today.getDate();  		// 날짜
		let day = today.getDay();  			// 요일
		let hours = today.getHours(); 		// 시
		let minutes = today.getMinutes();  	// 분
		let seconds = today.getSeconds();  	// 초
		var nowDate = year + '-' + month + '-' + date + " " + hours + ':' + minutes + ':' + seconds;
		
		var ajaxCount = 0;
		var itemCount = $("#pro .stepbox").length; // 총 문항수
		//console.log("총 문항 수: " + itemCount);
		
		$.each($("#pro .stepbox"), function(n, i) {
			
			var itemsIdx = $(i).find("input[name=itemsIdx]").val();
			var qtype = $(i).find("input[name=qtype]").val();
			var responseNote = '';
			if(qtype=="multiple") {
				responseNote = $(i).find(".rowItems input[type=radio]:checked").val();
			}else{
				responseNote = $(i).find(".rowItems textarea").val();
			}
			
			console.log("responseNote: "+ responseNote);
			
			$.ajax({ 
				type : "POST",
				dataType : "JSON",
				data : {
					"itemsIdx" : itemsIdx,
					"responseNote" : responseNote,
					"regdate" : nowDate
				},
				async: true, 
				url : "/survey/${surveyInfo.idx}/answer",	 
				beforeSend : function(xhr){
					xhr.setRequestHeader("authorization", getCookie("token"));
					xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
				},
				success : function(data){							
					
					ajaxCount++;
					
					if(ajaxCount==itemCount) {
						loadAni(false);
						createPopup('check-circle', '설문 조사를 모두 마쳤습니다.', 'bounceInDown', '확인', '/my');
					}
				}, 
				error : function(err, err2, err3) {			
					createPopup("exclamation-triangle","오류가 발생했습니다.<br/>자세한 사항은 문의를 주세요.", "bounceInDown");
					console.log("[ERROR]");
					console.log(err); console.log(err2); console.log(err3); 	
					ajaxCount++;
					if(ajaxCount==itemCount) {
						loadAni(false);
					}
				} 
			});
			
		});
		
	}
	
    var currStep = 1;
    var maxStep = 1;
    
    function nextStep() {
    	if(currStep==(maxStep-1)) {
    		$("#nextbtn").addClass("black");
    		$("#nextbtn").html('제출 <i style="top: 1px;position: relative;" class="fa fa-check"></i>');
    		$("#nextbtn").attr("onclick", "saveAnswer()");
    	}
    	currStep++;
    	$(".stepbox").css("display", "none");
    	$("#s-"+currStep).fadeIn();
    	
    	$(".curr-step").text(currStep);
    	
    	var perc = currStep/maxStep*100;
    	$(".perc").css("width", perc+"%");
    }
    function prevStep() {
    	if(currStep==1) { return; }
    	
    	if(currStep!=(maxStep-1)) {
    		$("#nextbtn").removeClass("black");    
    		$("#nextbtn").html('다음 <i style="top: 1px;position: relative;" class="fa fa-arrow-right"></i>');
    		$("#nextbtn").attr("onclick", "nextStep()");
    	}
    	
    	currStep--;
    	$(".stepbox").css("display", "none");
    	$("#s-"+currStep).fadeIn();
    	
    	$(".curr-step").text(currStep);
    	
    	var perc = currStep/maxStep*100;
    	$(".perc").css("width", perc+"%");
    }
    
    // 문항 정보 로드
    function loadItem() {
    	
		loadAni(true);
		
		$.ajax({ 
			type : "GET",
			dataType : "JSON",				
			async: false,
			url : "/survey/items/${surveyInfo.idx}",	
			beforeSend : function(xhr){
				xhr.setRequestHeader("authorization", getCookie("token"));
				xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
			},
			success : function(data){							
				
				console.log(data);
				
				$("#pro").html('');
				maxStep = data.data.length;
				$(".max-step").text(maxStep);
				
				$.each(data.data, function(index, value){	
					var content = "";
					
					content += '<div id="s-'+value.corder+'" class="stepbox displayNone">';
					content += '<div class="title">'+value.note+'</div>';
					content += '<input type="hidden" name="itemsIdx" value="'+value.idx+'"/>';
					
					if(value.qtype=="multiple") {
						content += '<input type="hidden" name="qtype" value="multiple"/>';
						content += '<ul class="rowItems">';
						//========================================
						var resArr = value.responseNote.split("|");
						for(var i=0;i<resArr.length;i++) {
							content += '<li>';
							content += '<input class="radio-style" type="radio" name="answer'+value.corder+'" id="ini'+value.corder+'_'+i+'" value="'+resArr[i]+'"/>';
							content += '<label for="ini'+value.corder+'_'+i+'" style="margin-left: 20px;">'+resArr[i]+'</label>';
							content += '</li>';   
						}
						//========================================
						content += '</ul>';
						content += '</div>';
					}else{
						content += '<input type="hidden" name="qtype" value="answer"/>';
						content += '<ul class="rowItems"><li>';
						content += '<div style="height: 300px;" class="default-textarea">';
						content += '<textarea class="" placeholder="질문에 대한 답변 내용을 입력하세요."></textarea>';
						content += '</div>';
						content += '</li></ul>';
						content += '</div>';						
					}
					content += '';
					$("#pro").append(content);
				});
				loadAni(false);
				$("#s-1").fadeIn();
				$(".curr-step").text(1);
				
				var perc = currStep/maxStep*100;
		    	$(".perc").css("width", perc+"%");
			}, 
			error : function(err, err2, err3) {	
				createPopup("exclamation-triangle","오류가 발생했습니다.<br/>자세한 사항은 문의를 주세요.", "bounceInDown");
				console.log("[ERROR]");
				console.log(err); console.log(err2); console.log(err3); 	
				loadAni(false);
			} 
		});
		
	}	
		
        
       
        
    getUserInfo(function(data){
        
        var c = '<li><a href="/my">대시보드</a></li><li><a href="/logout">로그아웃</a></li>';
        $("#header-priv").html(c);

        globalUser = data.data;
        //console.log(globalUser);
		
		loadItem();

    }, function(err){
        console.log("로그아웃 상태입니다.");
        location.href = "/";
    });
    
    loadSurveyBasicInfo();
    loadItem();
    </script>
    
	
</body>
</html>