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
	
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0/dist/Chart.min.js"></script>
	
	
	<!-- fontawesome -->
	<link rel="stylesheet" href="/resources/fontawesome/css/all.min.css"/>
    <script src="/resources/fontawesome/js/fontawesome.min.js"></script> 
	
	<style>
	.pop .profile-modify-group .intro-title {
		width: 100px; line-height: 1.7;
	}
	.pop .profile-modify-group .intro-desc {width: calc(100% - 100px);}
	.pop .profile-modify-group .select_box {display: inline-block;}
	.pop .profile-modify-group .intro-title .name {font-size: 18px;}
	</style>
							
</head>
<!-- #####################################################################[헤더 끝] -->
<body>
	<section id="wrapper" class="no-fix-menu">
	
		
		<!-- #####################################################################[ 팝업창 시작] -->
		<div id="pop02" class="pop displayNone"> 
			<div style="background: rgba(0,0,0,0.5);">     
				<div class="bx" style="width: 800px;">
					<div class="popbx">
						<div class="contentbox">  
							  
							<a class="btn-close" onclick="toggleSurveyIF();"><i class="fa fa-times" style="font-size: 30px;"></i></a>
							
							<div class="normal-title-head">
								<h1 class="tit">기본정보 수정</h1>  
								<span class="cat">Changing Information</span>
							</div>
							
							<div class="msg-headline">  
								<a class="comm-btn-style red small" style='cursor:pointer;' onclick="registerSurvey()"><i class="fa fa-save"></i> 저장</a>
							</div>
							
							<form id="surveyVo" name="surveyVo" onsubmit="return false;">
								<input type="hidden" name="idx" value="" id="f-s-idx"/>
								<ul class="profile-modify-group">
									<li>
										<div class="intro-title">
											<span class="name">설문 표지</span> 
										</div>
										<div class="intro-desc">
											<img id="coverImgSrc" class="va-bottom" src="/resources/img/bg-login.jpg" style="height: 140px;"/>
											<input type="hidden" name="coverImg" id="f-s-coverImg" value=""/>
											<a class="default-btn va-bottom upload-btn" id="coverImgBtn">설문표지(배경) 등록</a>
											<p style="padding-top: 10px;">온라인 설문지 진행시에 사용될 <strong class="red">설문 표지</strong> 배경 사진입니다.</p>
										</div>
									</li>
									<li>
										<div class="intro-title">
											<span class="name">설문 제목</span>
										</div>
										<div class="intro-desc m-row-two-item">  
											<div class="default-inputbox mrti-80" style="width: 100%;margin-right: 10px;">
												<input type="text" placeholder="설문 제목을 입력하세요." name="title" id="f-s-title"/>										
											</div>
										</div>
									</li>
									
									<li>
										<div class="intro-title">
											<span class="name">타깃 설정</span>
										</div>
										<div class="intro-desc m-row-two-item">  
											<div class="select_box" style="width: 200px;">
												<div style="width: 100%; box-sizing: border-box;">전체</div>
												<input type="hidden" name="bTarget" value="all" id="f-s-bTarget"/>
												<ul style="width: 100%;box-sizing: border-box;">
													<li><a data-val="all">전체</a></li>
													<li><a data-val="soldier">병사</a></li> 
													<li><a data-val="manager">간부</a></li> 
												</ul>
											</div>
										</div>
									</li>
		
									<li>
										<div class="intro-title">
											<span class="name">설문 시작일</span>
											<input type="hidden" name="startdate" id="f-s-start"/>
										</div>
										<div class="intro-desc m-row-two-item">
		
											<div class="select_box mrti-3-1" style="width: 150px;margin-right:10px;">
												<div style="width: 100%; box-sizing: border-box;">연도</div>
												<input type="hidden" id="f-s-start1" />
												<ul style="width: 100%;box-sizing: border-box;">
													<c:set var="nowYear" value="2020"></c:set>
													<c:forEach var="v" begin="2000" end="${nowYear}" step="1">
														<li><a data-val="${nowYear - v + 2000}"><c:out value="${nowYear - v + 2000}"/></a></li> 
													</c:forEach>
												</ul>
											</div>
		
											<div class="select_box mrti-3-1" style="width: 150px;margin-right:10px;">
												<div style="width: 100%; box-sizing: border-box;">월</div>
												<input type="hidden" id="f-s-start2" />
												<ul style="width: 100%;box-sizing: border-box;">
													<c:forEach var="v" begin="1" end="12">
														<li><a data-val="${v}"><c:out value="${v}"/></a></li> 
													</c:forEach>
												</ul>
											</div>
		
											<div class="select_box mrti-3-1" style="width: 150px;">
												<div style="width: 100%; box-sizing: border-box;">일</div>
												<input type="hidden" id="f-s-start3" />
												<ul style="width: 100%;box-sizing: border-box;">
													<c:forEach var="v" begin="1" end="31">
														<li><a data-val="${v}"><c:out value="${v}"/></a></li> 
													</c:forEach>
												</ul>
											</div>
		
										</div>
									</li>
		
									<li>
										<div class="intro-title">
											<span class="name">설문 종료일</span>
											<input type="hidden" name="enddate" />
										</div>
										<div class="intro-desc m-row-two-item">
		
											<div class="select_box mrti-3-1" style="width: 150px;margin-right:10px;">
												<div style="width: 100%; box-sizing: border-box;">연도</div>
												<input type="hidden" id="f-s-end1" />
												<ul style="width: 100%;box-sizing: border-box;">
													<c:set var="nowYear" value="2020"></c:set>
													<c:forEach var="v" begin="2000" end="${nowYear}" step="1">
														<li><a data-val="${nowYear - v + 2000}"><c:out value="${nowYear - v + 2000}"/></a></li> 
													</c:forEach>
												</ul>
											</div>
		
											<div class="select_box mrti-3-1" style="width: 150px;margin-right:10px;">
												<div style="width: 100%; box-sizing: border-box;">월</div>
												<input type="hidden" id="f-s-end2" />
												<ul style="width: 100%;box-sizing: border-box;">
													<c:forEach var="v" begin="1" end="12">
														<li><a data-val="${v}"><c:out value="${v}"/></a></li> 
													</c:forEach>
												</ul>
											</div>
		
											<div class="select_box mrti-3-1" style="width: 150px;">
												<div style="width: 100%; box-sizing: border-box;">일</div>
												<input type="hidden" id="f-s-end3" />
												<ul style="width: 100%;box-sizing: border-box;">
													<c:forEach var="v" begin="1" end="31">
														<li><a data-val="${v}"><c:out value="${v}"/></a></li> 
													</c:forEach>
												</ul>
											</div>
		
										</div>
									</li>
		
									<li>
										<div class="intro-title">
											<span class="name">설문 소개</span>
										</div>
										<div class="intro-desc">
											<div class="default-textarea" style="height: 300px; width: 100%;">
												<textarea placeholder="진행하려는 설문에 대해서 자유롭게 소개하세요." id="f-s-note" name="note"></textarea>										
											</div>
										</div>
									</li>
								</ul>
							
							</form>
							
							
									
						</div>  
					</div>
				</div>
			</div>
		</div>
		<!-- #####################################################################[ 팝업창 끝] -->
		
		
	
		<!-- #####################################################################[상단 시작] -->
		<jsp:include page="./include/header2.jsp"/>
		<!-- #####################################################################[상단 끝] -->
		<!-- #####################################################################[컨테이너 시작] -->
		<section class="container push-top">	
			<div class="container_inner">	
				
				
				<!-- ##################################################################### -->
				<div class="inf-mod-wrapper">
				<div class="inner" style='width: 1000px;'>
					
					<div class="normal-title-head">  
						<h1 class="tit">${surveyInfo.title}</h1>
						<span class="cat">Survey Statistics</span>
					</div>
					
					<form id="surveyVo" name="surveyVo" onsubmit="return registerSurvey();">
						
						<div class="profile-modify-bottom" style="margin-top: 30px; margin-bottom: 50px;">
							<a class="comm-btn-style" style="float:left; cursor:pointer;" href="/my">목록으로</a>
						
							<a class="comm-btn-style red" style="float: right; cursor: pointer; margin-left: 10px;" onclick="toggleSurveyIF(${surveyInfo.idx})">
								<i class="fa fa-save"></i>&nbsp;&nbsp;수정
							</a>
							<a class="comm-btn-style red" style="float: right; cursor: pointer; width: 200px; background: rgb(28,115,70)" onclick="">
								<i class="fa fa-file-excel"></i>&nbsp;&nbsp;Excel Download
							</a>
						</div>
						
						
						<style>
						.anbox { margin-bottom: 100px; }
						.anbox > li {font-size: 18px; color: #000; padding-bottom: 50px; border-bottom: 1px solid #E7E8EF; margin-bottom: 50px;}
						.anbox > li .title {font-size: 22px; font-weight: bold;}
						.anbox > li .subs {margin: 10px 0px 15px 0px;}
						.anbox > li .sta {width: 450px;}
						.anbox > li .alist li {display: block;background: rgb(247, 244, 244);padding: 5px 10px; margin-bottom: 5px;}
						</style>
						<ul class="anbox">
							<%-- <li>
								<div class="title">1. 김 선생이 사용한 말하기 방법을 사용하여 다음 학생에게 해줄 수 있는 말로 적절한 것은?</div>
								<div class="subs">답변한 수: 98,890명</div>
								<div class="sta">
									<canvas id="myChart" width="400" height="400"></canvas>
								</div>
							</li> --%>
							
							<!-- <li class="title">
								<div style="font-size: 22px; font-weight: bold;">2. 참석하는 사람들의 성함을 알려주세요.</div>
								<div style="margin: 10px 0px 15px 0px;">
									답변한 수: 198,890명
								</div>
								<div style="width: 450px;">
									<ul class="alist">
										<li>홍기롣ㅇ</li>
										<li>홍기롣ㅇ</li>
										<li>홍기롣ㅇ</li>
									</ul>
								</div>
							</li>  -->
						</ul>
						
						
						
						<script>
						
						function heesung() {
							$.ajax({ 
								type : "GET",
								dataType : "JSON",				
								async: false,
								url : "/survey/statistics/${surveyInfo.idx}",	
								beforeSend : function(xhr){
									xhr.setRequestHeader("authorization", getCookie("token"));
									xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
								},
								success : function(data){							
									
									console.log(data);
									var responseNoteArr = new Array();
									
									$.each(data.data.qlist, function(index, value){	
										
										var numb = index+1;
										var c = '';
										
										var answerSum = 0;   
										
										// 객관식 답변
										if(value.qtype=="multiple") {
											
											responseNoteArr = value.responseNote.split("|");
											console.log(responseNoteArr);
											
											
											answerSum = 0;
											rNAC = new Array();
											for(var i=0;i<responseNoteArr.length;i++) {
												rNAC.push(0);
											}
											console.log(rNAC);
											
											var tmpCount = 0;
											for(var tmp=0;tmp<data.data.slist.length;tmp++) {				
												if(value.idx == data.data.slist[tmp].idx){
													
													console.log("=> 답변:"+ data.data.slist[tmp].a +", 합계:"+data.data.slist[tmp].aSum);
													
													for(var tmp2=0;tmp2<responseNoteArr.length;tmp2++) {
														//console.log("==>" + responseNoteArr[tmp2]);
														if(responseNoteArr[tmp2] == data.data.slist[tmp].a) {
															rNAC[tmp2] = data.data.slist[tmp].aSum; 
															answerSum += rNAC[tmp2]; 
															//console.log("==> rNAC["+tmp2+"] = " + data.data.slist[tmp].aSum);
														}
													}    
													
													
												}  
											}
											console.log(rNAC);
											
											
											c += '<li>';
											c += '<div class="title">'+numb+'. '+value.note+'</div>';
											c += '<div class="subs">답변한 수: '+(answerSum)+'명</div>';
											c += '<div class="sta">';
											c += '<canvas id="myChart'+numb+'" width="400" height="400"></canvas>';
											c += '</div>';
											c += '</li>';
											$(".anbox").append(c);
											
											
											var ctx = document.getElementById('myChart'+numb).getContext('2d');
											var myChart = new Chart(ctx, {
											    type: 'pie',
											    data: { 
											        labels: responseNoteArr,
											        datasets: [{
											            label: '# of Votes',
											            data: rNAC,//[12, 19, 3, 5, 2],
											            backgroundColor: [
											            	'rgba(255, 99, 132, 1)',
											                'rgba(54, 162, 235, 1)',
											                'rgba(255, 206, 86, 1)',
											                'rgba(75, 192, 192, 1)',
											                'rgba(153, 102, 255, 1)'
											            ]/* ,
											            borderColor: [
											                'rgba(255, 99, 132, 1)',
											                'rgba(54, 162, 235, 1)',
											                'rgba(255, 206, 86, 1)',
											                'rgba(75, 192, 192, 1)',
											                'rgba(153, 102, 255, 1)'
											            ],
											            borderWidth: 1 */
											        }]
											    },
											    options: {
											        scales: {
											            yAxes: [{
											                ticks: {
											                    beginAtZero: true
											                }
											            }]
											        }
											    }
											});
										}
										// 주관식 답변
										else{
											
											
											var cc = '';
											
											for(var tmp=0;tmp<data.data.slist.length;tmp++) {				
												if(value.idx == data.data.slist[tmp].idx){
													
													console.log("=> 답변:"+ data.data.slist[tmp].a +", 합계:"+data.data.slist[tmp].aSum);
													
													cc += '<li>'+data.data.slist[tmp].a;
													if(data.data.slist[tmp].aSum>1) {
														cc += ' ('+data.data.slist[tmp].aSum+')';
														answerSum += data.data.slist[tmp].aSum;
													}else{
														answerSum++; 
													}
													cc += '</li>';
													
												}  
											}
											
											c += '<li>';
											c += '<div class="title">'+numb+'. '+value.note+'</div>';
											c += '<div class="subs">답변한 수: '+(answerSum)+'명</div>';
											c += '<div class="sta">';
											c += '<ul class="alist">';
											
											c += cc;
											
											c += '</ul></div>';
											c += '</li>';
											$(".anbox").append(c);
											
										}
										console.log("==============================");
									});
									
								}, 
								error : function(err, err2, err3) {	
									createPopup("exclamation-triangle","오류가 발생했습니다.<br/>자세한 사항은 문의를 주세요.", "bounceInDown");
									console.log("[ERROR]");
									console.log(err); console.log(err2); console.log(err3); 	
								} 
							});
						}
						
						heesung();
						
						
						</script>

						
					</form>
					
					<div style="text-align: center;">
						<a class="comm-btn-style red" style="cursor: pointer;" onclick="deleteSurvey()">
							<i class="fa fa-trash-alt"></i>&nbsp;&nbsp;설문지 삭제
						</a>
					</div>
					
				</div>
				</div>
				
				
			</div>
		</section>
		<!-- #####################################################################[컨테이너 끝] -->
		<!-- #####################################################################[하단 시작] -->
        <jsp:include page="./include/footer.jsp"/>
		<!-- #####################################################################[하단 끝] -->
		
	</section>


	<div style="display:none;">
		<form action="/file/upload" method="post" enctype="multipart/form-data">
			<input style="display:none;" autocomplete=off name="file1" type="file" />
			<input type="submit" value="tst"/>
		</form>
	</div>
	


    <script>
		
		
        
        getUserInfo(function(data){
    
            var c = '<li><a href="/my">대시보드</a></li><li><a href="/logout">로그아웃</a></li>';
            $("#header-priv").html(c);

            globalUser = data.data;
            
        }, function(err){
            console.log("로그아웃 상태입니다.");
            location.href = "/";
        });
        
        
        
        $("#coverImgBtn").click(function(){
			$("input[name=file1]").click();
		}); 
		$("input[name=file1]").on("change", function(){	
			
			createFileLoad();
			
			var thss = this.form;
			$(thss).ajaxSubmit({
				dataType : "JSON",
				uploadProgress : function(event,position,total,percentComplete){				
					$("#fu-per").css('width', percentComplete+"%");
				},
				success : function(data){  
					console.log(data);
// 					$("#coverImgSrc").css("background-image", 'url(/resources/tmp/'+data.data+'), url(/resources/img/profile.png)');
					$("#coverImgSrc").attr("src", '/resources/tmp/'+data.data);
					$("#f-s-coverImg").val('/resources/tmp/'+data.data);
					$("#file-upload-loading-pop .mt").text("파일을 업로드 했습니다.");
				}, 
				error : function(xhr, status, error) {		
					$("#file-upload-loading-pop").detach(); 
					createPopup("exclamation-triangle","해당 이미지 파일을 업로드할 수 없습니다.<br/>자세한 사항은 문의를 주세요.", "bounceInDown");
					console.log("[ERROR]");
					console.log(xhr); console.log(status); console.log(error); 
				}						
			});   

		});
        
		function registerSurvey() {
			
			var startDate = $("#f-s-start1").val()+"-"+$("#f-s-start2").val()+"-"+$("#f-s-start3").val();
			var endDate = $("#f-s-end1").val()+"-"+$("#f-s-end2").val()+"-"+$("#f-s-end3").val();
			$("#surveyVo input[name=startdate]").val(startDate);
			$("#surveyVo input[name=enddate]").val(endDate);
			var param = $("#surveyVo").serialize();
			
			console.log(param);
			
			loadAni(true);
			
			$.ajax({ 
				type : "POST",
				dataType : "JSON",
				data : param,
				async: false,
				url : "/survey",	
				beforeSend : function(xhr){
					xhr.setRequestHeader("authorization", getCookie("token"));
					xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
				},
				success : function(data){
					loadAni(false);
					console.log(data);
					createPopup('check-circle', '기본 정보를 수정했습니다.', 'bounceInDown', '확인');
					toggleSurveyIF();
				}, 
				error : function(err, err2, err3) {
					
					loadAni(false);
					console.log("[ERROR]");
					console.log(err); console.log(err2); console.log(err3); 
					createPopup("exclamation-triangle","오류가 발생했습니다.<br/>자세한 사항은 문의를 주세요.", "bounceInDown");
				} 
			});
			
			
			return false;
		}
        
		function deleteSurvey() {
			
			$.ajax({ 
				type : "DELETE",
				dataType : "JSON",
				async: false,
				url : "/survey/${surveyInfo.idx}",	
				beforeSend : function(xhr){
					xhr.setRequestHeader("authorization", getCookie("token"));
					xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
				},
				success : function(data){
					loadAni(false);
					console.log(data);
					location.href = "/my";
				}, 
				error : function(err, err2, err3) {
					
					loadAni(false);
					console.log("[ERROR]");
					console.log(err); console.log(err2); console.log(err3); 
					createPopup("exclamation-triangle","오류가 발생했습니다.<br/>자세한 사항은 문의를 주세요.", "bounceInDown");
				} 
			});
		}
        
    </script>
    
	
</body>
</html>