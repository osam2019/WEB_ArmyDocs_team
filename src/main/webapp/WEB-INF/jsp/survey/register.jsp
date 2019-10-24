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
	<section id="wrapper" class="no-fix-menu">
	
		<!-- #####################################################################[상단 시작] -->
		<jsp:include page="../include/header2.jsp"/>
		<!-- #####################################################################[상단 끝] -->
		<!-- #####################################################################[컨테이너 시작] -->
		<section class="container push-top">	
			<div class="container_inner">	
				
				
				<!-- ##################################################################### -->
				<div class="inf-mod-wrapper">
				<div class="inner">
					
					<div class="normal-title-head">
						<h1 class="tit">Step 1. 설문 기본정보</h1>
						<span class="cat">Survey Basic Informations</span>
					</div>
					
					<form id="surveyVo" name="surveyVo" onsubmit="return registerSurvey();">
						

						<ul class="profile-modify-group">
							<li>
								<div class="intro-title" style="line-height: 140px;">
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
										<input type="hidden" name="bTarget" value="all"/>
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
									<input type="hidden" name="startdate" />
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

							<li class="all-line">
								<div class="intro-title">
									<span class="name">개인정보이용동의</span>
								</div>
								<div class="intro-desc noline">
									<div style="margin-bottom: 10px;">
										<table class="terms-table">
											<tr>
												<td class="emp">목적</td>
												<td class="emp">항목</td>
												<td class="emp">보유 및 이용간</td>
											</tr>
											<tr>
												<td>설문 통계 및 군부대 빅데이터,머신러닝 등에 활용</td>
												<td>이름,생년월일,성별,휴대전화번호,이메일,부대정보</td>
												<td>회원탈퇴시까지</td>
											</tr>
										</table>
									</div>
									<div>
										<input class="radio-style" name="terms2" type="checkbox" id="chck" >
										<label for="chck" style="margin-left: 20px;">개인정보 수집 및 이용에 동의합니다.</label>
									</div>
								</div>
							</li>


						</ul>

						<div class="profile-modify-bottom" style="margin-bottom: 100px;">
							<a class="comm-btn-style" style="float:left; cursor:pointer;" href="/my">이전</a>
							<a class="comm-btn-style red" style="float: right; cursor: pointer;" onclick="registerSurvey()">다음단계</a>
						</div>

				
					</form>
					
				</div>
				</div>
				
				
			</div>
		</section>
		<!-- #####################################################################[컨테이너 끝] -->
		<!-- #####################################################################[하단 시작] -->
        <jsp:include page="../include/footer.jsp"/>
		<!-- #####################################################################[하단 끝] -->
	</section>
	
	<div style="display:none;">
		<form action="/file/upload" method="post" enctype="multipart/form-data">
			<input style="display:none;" autocomplete=off name="file1" type="file" />
			<input type="submit" value="tst"/>
		</form>
	</div>
    
    <script>
    
    
		
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
        
        getUserInfo(function(data){
    
            var c = '<li><a href="/my">마이페이지</a></li><li><a href="/logout">로그아웃</a></li>';
            $("#header-priv").html(c);

            globalUser = data.data;
            //console.log(globalUser);

        }, function(err){
            console.log("로그아웃 상태입니다.");
            location.href = "/";
        });
		
		function registerSurvey() {
			
			var startDate = $("#f-s-start1").val()+"-"+$("#f-s-start2").val()+"-"+$("#f-s-start3").val();
			var endDate = $("#f-s-end1").val()+"-"+$("#f-s-end2").val()+"-"+$("#f-s-end3").val();
			$("input[name=startdate]").val(startDate);
			$("input[name=enddate]").val(endDate);
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
					
					console.log(data);
					loadAni(false);
					location.href = "/my/survey/"+data.data;
				}, 
				error : function(err, err2, err3) {
					
					loadAni(false);
					console.log("[ERROR]");
					console.log(err); console.log(err2); console.log(err3); 
					
				} 
			});
			
			
			return false;
		}
        
		
		
		
		let today = new Date();
		let year = today.getFullYear(); // 년도
		let month = today.getMonth() + 1;  // 월
		let date = today.getDate();  // 날짜
		let day = today.getDay();  // 요일
		
		var nowDate = year + '-' + month + '-' + date;
		
		$("#f-s-start").val(nowDate);
        $("#f-s-start1").parent().find("> div").text(year); $("#f-s-start1").val(year);
        $("#f-s-start2").parent().find("> div").text(month); $("#f-s-start2").val(month);
        $("#f-s-start3").parent().find("> div").text(date); $("#f-s-start3").val(date);
        
        $("#f-s-end").val(nowDate);
        $("#f-s-end1").parent().find("> div").text(year); $("#f-s-end1").val(year);
        $("#f-s-end2").parent().find("> div").text(month); $("#f-s-end2").val(month);
        $("#f-s-end3").parent().find("> div").text(date); $("#f-s-end3").val(date);
		
        
    </script>
    
	
</body>
</html>