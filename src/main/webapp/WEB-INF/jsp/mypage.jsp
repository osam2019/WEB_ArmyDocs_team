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
	<section id="wrapper" class="no-fix-menu">
	
		<!-- #####################################################################[상단 시작] -->
		<jsp:include page="./include/header2.jsp"/>
		<!-- #####################################################################[상단 끝] -->
		<!-- #####################################################################[컨테이너 시작] -->
		<section class="container push-top">	
			<div class="container_inner">	
				
				
				<!-- ##################################################################### -->
				<div class="mypage">
					
					<div class="visual-layer">
						<div class="bc">
							<div class="inner">
								
								<div class="profile-img-area">
									<div class="img">
										<span class="pic" id="imgT"></span>
										<a class="ico-set" id="profile-btn" style='cursor:pointer;'><img src="/resources/img/ico-set.png"/></a>
									</div>
									<div style="margin-top: 15px;">
                                        <a class="name"><span class="my-atype"></span>) <span class="my-name"></span></a>
										<div class="lebel">
											<img class="medal" src="/resources/img/g3.png" style="position: relative; top: 3px;"/>
											<span class="my-atype2"></span>, <span class="my-station"></span>
										</div>
									</div>
								</div>						
								<div>  
									<ul class="mymenu-group">
										
										<li>
											<a class="area">
												<span class="emp my-survey-list-count">0</span><br/>
												내가 작성한 설문
											</a>
										</li>
										<li>
											<a class="area">
												<span class="emp pro-survey-list-count">0</span><br/>
												현재 참여 가능한 설문
											</a>
										</li>
										<li>
											<a class="area">
												<span class="emp my-signDate">0000-00-00</span><br/>
												회원 가입일
											</a> 
										</li>
										
									</ul>
								
								</div>
								
							</div>	
						</div>				
					</div>
				
					<div id="mypage-tab-wrapper" class="campaign-contents-wrapper">
						
						<div class="contents-navi-wrapper">
							<div class="inner">
								<ul class="tab-group">
									
									<li>
										<a class="tab tab-section tab-section1 selected" onclick="toggleMypageTab(1)">진행중인 설문<span class="bottom-bar"></span><span class="numb pro-survey-list-count"></span></a>
									</li> 
									<li>
										<a class="tab tab-section tab-section2" onclick="toggleMypageTab(2)">My 설문<span class="bottom-bar"></span><span class="numb my-survey-list-count"></span></a>
									</li>	
									<li>
										<a class="tab tab-section tab-section3" onclick="toggleMypageTab(3)">프로필 수정<span class="bottom-bar"></span></a>
									</li>
									
									<li class="master-menu">
										<a class="tab tab-section tab-section4" onclick="toggleMypageTab(4)">승인을 기다리는 목록<span class="bottom-bar"></span><span class="numb u-list-count"></span></a>
									</li>
																		
								</ul>
								<ul class="tab-group absol-right">
									<li class="mobile-hidden">
										<a class="tab" href="">1:1문의<span class="bottom-bar"></span></a>
									</li>		
									<li>
										<a class="comm-btn-style red" href="/my/survey"><i class="fa fa-folder-open"></i> 설문지 생성</a>
									</li>					
								</ul>
							</div>
						</div>	
						
						<div class="inner">
						    
                            
							<div class="tab-container tab-section tab-section3 ">
							<form name="userVo" id="userVo" onsubmit="return false;">
                                
								<ul class="profile-modify-group">
									<li>
										<div class="intro-title">
											<span class="name">군번(아이디)</span>
										</div>
										<div class="intro-desc m-row-two-item">  
											<div class="default-inputbox mrti-80" style="width: 470px;margin-right: 10px;">
												<input disabled="disabled" type="text" placeholder="군번" id="f-my-id"/>										
											</div>
											<!--<a class="default-btn mrti-20" href="#">중복확인</a>-->
										</div>
									</li>
									<li>
										<div class="intro-title">
											<span class="name">이메일</span>
										</div>
										<div class="intro-desc">
											<div class="default-inputbox" style="width: 470px;">
												<input type="text" placeholder="인증 가능한 이메일" id="f-my-email" name="email"/>
											</div>
										</div>
									</li>
									
									<li>
										<div class="intro-title">
											<span class="name">이름</span>
										</div>
										<div class="intro-desc">
											<div class="default-inputbox">
												<input type="text" placeholder="가입시 입력한 이름" id="f-my-name" name="name"/>										
											</div>
										</div>
									</li>
									
									<li>
										<div class="intro-title">
											<span class="name">현재 소속부대</span>
										</div>
										<div class="intro-desc">
											<div class="default-inputbox">
												<input type="text" placeholder="현재 복무중인 부대" id="f-my-station" name="station"/>										
											</div>
										</div>
									</li>
									
									<li>
										<div class="intro-title">
											<span class="name">입대일</span>
                                            <input type="hidden" name="recruitDate" />
										</div>
										<div class="intro-desc m-row-two-item">
											
											<div class="select_box mrti-3-1" style="width: 150px;margin-right:10px;">
												<div style="width: 100%; box-sizing: border-box;">연도</div>
                                                <input type="hidden" id="f-my-recruitDate1" />
												<ul style="width: 100%;box-sizing: border-box;">
													<c:forEach var="v" begin="1950" end="2019">
                                                        <li><a data-val="${v}"><c:out value="${v}"/></a></li> 
                                                    </c:forEach>
												</ul>
											</div>
											
											<div class="select_box mrti-3-1" style="width: 150px;margin-right:10px;">
												<div style="width: 100%; box-sizing: border-box;">월</div>
                                                <input type="hidden" id="f-my-recruitDate2" />
												<ul style="width: 100%;box-sizing: border-box;">
													<c:forEach var="v" begin="1" end="12">
                                                        <li><a data-val="${v}"><c:out value="${v}"/></a></li> 
                                                    </c:forEach>
												</ul>
											</div>
											
											<div class="select_box mrti-3-1" style="width: 150px;">
												<div style="width: 100%; box-sizing: border-box;">일</div>
                                                <input type="hidden" id="f-my-recruitDate3" />
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
											<span class="name">휴대폰</span>    
										    <input type="hidden" name="phonenm" />
                                        </div>
										<div class="intro-desc m-row-two-item">
											<div class="select_box mrti-3-1" style="width: 150px;margin-right:10px;">
												<div style="width: 100%; box-sizing: border-box;">010</div>
                                                <input type="hidden" id="f-my-phone1" value="010" />
												<ul style="width: 100%;box-sizing: border-box;">
													<li><a data-val="010">010</a></li> 
													<li><a data-val="011">011</a></li>
												</ul>
											</div>
											<div class="default-inputbox mrti-3-1" style="width:150px;margin-right:10px;">
												<input id="f-my-phone2" type="text" placeholder="" value="1234"/>																			
											</div> 
											<div class="default-inputbox mrti-3-1" style="width:150px">  
												<input id="f-my-phone3" type="text" placeholder="" value="5678"/>																			
											</div>
										</div>
									</li>
									<li>
										<div class="intro-title">
											<span class="name">병사/간부 구분</span>
										</div>
										<div class="intro-desc">
											<div class="select_box mrti-3-1" style="width: 150px;">
												<div style="width: 100%; box-sizing: border-box;">병사</div>
                                                <input type="hidden" name="atype" id="f-my-atype" value=""/>
												<ul style="width: 100%;box-sizing: border-box;">
													<li><a data-val="soldier">병사</a></li> 
													<li><a data-val="manager">간부</a></li>
												</ul>
											</div>
										</div>
									</li>
									<li>
										<div class="intro-title">
											<span class="name">육해공 구분</span>
										</div>
										<div class="intro-desc">
											<div class="select_box mrti-3-1" style="width: 150px;">
												<div style="width: 100%; box-sizing: border-box;">육군</div>
                                                <input type="hidden" name="atype2" id="f-my-atype2" value=""/>
												<ul style="width: 100%;box-sizing: border-box;">
													<li><a data-val="army">육군</a></li> 
													<li><a data-val="navy">해군</a></li>
													<li><a data-val="airforce">공군</a></li>
												</ul>
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
									
									<li class="all-line">
										<div class="intro-title">
											<span class="name">비밀번호 수정</span>
										</div>
										<div class="intro-desc noline">
											<div style="margin-bottom: 10px;">
												<div class="default-inputbox">
													<input name="oldPassword" type="password" placeholder="기존 비밀번호"/>																			
												</div>
												<span class="mobile-hidden"
													  style="line-height: 55px;display: inline-block;margin-left: 20px;font-size: 14px;">
													비밀번호 수정시에만 필드를 입력해주세요.
												</span>
											</div>
											<div style="margin-bottom: 10px;">
												<div class="default-inputbox">
													<input name="newPassword" type="password" placeholder="새 비밀번호"/>																			
												</div>
											</div>
											<div>
												<div class="default-inputbox">
													<input name="newPassword2" type="password" placeholder="새 비밀번호 확인"/>																			
												</div>
											</div>
										</div>
									</li>
								</ul>
								
								<div class="profile-modify-bottom">
									<a class="comm-btn-style" style="float:left; cursor:pointer;" onclick="withdraw()">회원탈퇴</a>
									<a class="comm-btn-style red" style="float: right; cursor: pointer;" onclick="updateUser()">수정하기</a>
								</div>
                            </form>	
							</div>
							
							<div class="tab-container tab-section tab-section1 selected">
								
								<div class="list-filter-wrapper">
									<div class="row-filter">
										<div class="inlinegroup_m">
											<div class="select_box f_1_sel">
												<div style="width: 140px;">전체 설문</div>
												<input type="hidden" value="ALL"/>
												<ul style="width: 152px;">
													<li><a data-val="ALL">전체 설문</a></li> 
													<li><a data-val="PROGRESS">진행중인 설문만</a></li>
												</ul>
											</div>
											<div class="select_box f_2_sel" data-target="pro-survey-list">
												<div style="width: 140px;">설문 대상</div>
												<input type="hidden" value="all"/>
												<ul style="width: 152px;">
													<li><a data-val="all">전체 대상</a></li> 
													<li><a data-val="soldier">병사</a></li>
													<li><a data-val="manager">간부</a></li>
												</ul>
											</div>
										</div>
										
										<div class="search-inputbox m100">
											<input type="text" data-target="pro-survey-list" placeholder="검색어를 입력하세요" onkeyup="saerchK(this)"/>
										</div>
									</div>
									<div class="row-filter">
										<p class="counting"><strong>현재 참여 가능</strong>한 설문 <strong class="emp pro-survey-list-count">0</strong>개</p>
									</div> 
								</div>
					
								<table class="board-table-style1" style="margin-bottom: 150px;">
									<thead>
										<tr>
											<th>순서</th>
											<th class="tw110">작성일</th>
											<th>대상</th>
											<th>설문제목</th>
											<th class="tw100">작성자</th>
											<th class="tw110 mobile-last"><a href="#">시작일<img src="/resources/img/ico-order-asc.png"/></a></th>
											<th class="tw110 mobile-hidden"><a href="#">마감일<img src="/resources/img/ico-order-asc.png"/></a></th>
										</tr>
									</thead>
									<tbody id="pro-survey-list">
										<!-- ####################################################### -->	
										<!-- 현재 진행중인 설문 목록 노출 -->	
										<!-- ####################################################### -->	
									</tbody>
								</table>
								
							</div>
							
							<div class="tab-container tab-section tab-section2">
								
								<div class="list-filter-wrapper">
									<div class="row-filter">
										<div class="inlinegroup_m">
											
											<div class="select_box f_2_sel" data-target="my-survey-list">
												<div style="width: 140px;">설문 대상</div>
												<input type="hidden" value="all"/>
												<ul style="width: 152px;">
													<li><a data-val="all">전체 대상</a></li> 
													<li><a data-val="soldier">병사</a></li>
													<li><a data-val="manager">간부</a></li>
												</ul>
											</div>
										</div>
										<div class="search-inputbox m100">
											<input type="text" data-target="my-survey-list" placeholder="검색어를 입력하세요" onkeyup="saerchK(this)"/>
										</div>
									</div>
									<div class="row-filter">
										<p class="counting"><strong>내가 등록</strong>한 설문 <strong class="emp my-survey-list-count">0</strong>개</p>
									</div>   
								</div>
								
								<table class="board-table-style1" style="margin-bottom: 150px;">
									<thead>
										<tr>
											<th>순서</th>
											<th class="tw110">작성일</th>
											<th>대상</th>
											<th>설문제목</th>
											<th class="tw110 mobile-last"><a href="#">시작일</a></th>
											<th class="tw110 mobile-hidden"><a href="#">마감일</a></th>
										</tr>
									</thead>
									<tbody id="my-survey-list">
										<!-- ####################################################### -->	
										<!-- 내가 작성한 설문 목록 노출 -->	
										<!-- ####################################################### -->	
									</tbody>
								</table>
								
								
								
							</div>
							
							
							<div class="tab-container tab-section tab-section4 master-menu">
								
								<div class="list-filter-wrapper">
									<div class="row-filter">
										<div class="search-inputbox m100">
											<input type="text" data-target="u-list" placeholder="회원 이름,군번을 검색하세요" onkeyup="saerchK(this)"/>
										</div>
									</div>
									<div class="row-filter">
										<p class="counting"><strong>승인</strong>을 기다리는 회원 <strong class="emp u-list-count">0</strong>명</p>
									</div>   
								</div>
								
								<table class="board-table-style1" style="margin-bottom: 150px;">
									<thead>
										<tr>
											<th class="tw100">IDX</th>
											<th>소속</th>
											<th>이름 (군번)</th>
											<th>이메일</th>
											<th>핸드폰번호</th>
											<th>가입일</th>
											<th>승인</th>
										</tr>
									</thead>
									<tbody id="u-list">
										
									</tbody>
								</table>
								
							</div>
							
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
    	
    	
    
	    function sleepI (delay) {
    	   var start = new Date().getTime();
    	   while (new Date().getTime() < start + delay);
    	}

		
		$("#profile-btn").click(function(){
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
					//console.log(data);
					$("#imgT").css("background-image", 'url(/resources/tmp/'+data.data+'), url(/resources/img/profile.png)');				
					$("#file-upload-loading-pop .mt").text("파일을 업로드 했습니다.");
					
					$.ajax({ 
						type : "POST",
						dataType : "JSON",
						data : {"fileName" : data.data},
						async: false,
						url : "/profile",	
						beforeSend : function(xhr){
							xhr.setRequestHeader("authorization", getCookie("token"));
							xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
						},
						success : function(data){
							console.log(data);	
						}
					});
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
    
            var c = '<li><a href="/my">대시보드</a></li><li><a href="/logout">로그아웃</a></li>';
            $("#header-priv").html(c);

            globalUser = data.data;
            
            if($(".mypage").is(":visible")) {
                $(".my-name").text(globalUser.name);
                $(".my-station").text(globalUser.station);
                $(".my-atype").text(globalUser.atype=="manager"?"간부":"병사");
                $(".my-atype2").text(globalUser.atype2=="army"?"육군":globalUser.atype2=="navy"?"해군":"공군");
                $(".my-signDate").text(globalUser.signDate);
                
                
                $("#f-my-id").val(globalUser.id);
                $("#f-my-name").val(globalUser.name);
                $("#f-my-station").val(globalUser.station);
                $("#f-my-email").val(globalUser.email);
                
                $("#f-my-atype").val(globalUser.atype);
                $("#f-my-atype").parent().find("> div").text(globalUser.atype=="manager"?"간부":"병사");
				
				$("#f-my-atype2").val(globalUser.atype2);
                $("#f-my-atype2").parent().find("> div").text(globalUser.atype2=="army"?"육군":globalUser.atype2=="navy"?"해군":"공군");
                
                var p1 = globalUser.phonenm.split("-")[0];
                var p2 = globalUser.phonenm.split("-")[1];
                var p3 = globalUser.phonenm.split("-")[2];
                
                $("#f-my-phone1").val(p1);
                $("#f-my-phone1").parent().find("> div").text(p1);
                $("#f-my-phone2").val(p2);
                $("#f-my-phone3").val(p3);
                
                
                var r1 = globalUser.recruitDate.split("-")[0];
                var r2 = globalUser.recruitDate.split("-")[1];
                var r3 = globalUser.recruitDate.split("-")[2];
                
                $("#f-my-recruitDate1").val(r1);
                $("#f-my-recruitDate1").parent().find("> div").text(r1);
                $("#f-my-recruitDate2").val(r2);
                $("#f-my-recruitDate2").parent().find("> div").text(r2);
                $("#f-my-recruitDate3").val(r3);
                $("#f-my-recruitDate3").parent().find("> div").text(r3);
                
                var imgRes = globalUser.profile;
                $("#imgT").css("background-image", "url("+imgRes+"), url(/resources/img/profile.png)");
                
                if(globalUser.masterFlag==false){
                	$(".master-menu").detach();
                }
                
                
            }




        }, function(err){
            console.log("로그아웃 상태입니다.");
            location.href = "/";
        });
        
        function withdraw() {
            
			if(confirm("회원을 탈퇴하게 되면 기존 정보들이 전부 삭제됩니다. 정말로 회원 탈퇴 하시겠습니까?")) {
				
				loadAni(true);
           
				$.ajax({ 
					type : "DELETE",
					dataType : "JSON",
					async: false,
					url : "/user",	
					beforeSend : function(xhr){
						xhr.setRequestHeader("authorization", getCookie("token"));
						xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
					},
					success : function(data){
						console.log(data);
						loadAni(false);
						if(data.statusCode == 200) {
							location.href="/logout";
						}else{
							createPopup("exclamation-triangle","오류가 발생했습니다.<br/>자세한 사항은 문의를 주세요.", "bounceInDown");
						}
					}, 
					error : function(err, err2, err3) {
						loadAni(false);
						createPopup("exclamation-triangle","오류가 발생했습니다.<br/>자세한 사항은 문의를 주세요.", "bounceInDown");					
					} 
				});
				
			}
            
        }
        
        function updateUser() {
            
            var recruitDate = $("#f-my-recruitDate1").val()+"-"+$("#f-my-recruitDate2").val()+"-"+$("#f-my-recruitDate3").val();
            var phonenm = $("#f-my-phone1").val()+"-"+$("#f-my-phone2").val()+"-"+$("#f-my-phone3").val();
            
            $("input[name=phonenm]").val(phonenm);
            $("input[name=recruitDate]").val(recruitDate);
            
            var param = $("#userVo").serialize();
            
			var oldPw = $("input[name=oldPassword]").val();
			if(oldPw.trim() != "") {
				var newPw = $("input[name=newPassword]").val();
				var newPw2 = $("input[name=newPassword2]").val();
				if(newPw=="") {
					createPopup("exclamation-triangle","새롭게 설정할 비밀번호를 입력하세요.", "bounceInDown", "확인");
					return false;
				}  
				if(newPw != newPw2) {
					createPopup("exclamation-triangle","새 비밀번호와 새 비밀번호 확인이<br/>일치하지 않습니다.", "bounceInDown", "확인");
					return false;
				}
			}
			
            loadAni(true);
            
			$.ajax({ 
				type : "POST",
				dataType : "JSON",
				data : param,
				async: false,
				url : "/user",	
				beforeSend : function(xhr){
					xhr.setRequestHeader("authorization", getCookie("token"));
					xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
				},
				success : function(data){					
					//console.log(data);
					loadAni(false);					
					if(data.statusCode != 200) {						
						createPopup("exclamation-triangle","기존 사용중인 비밀번호가 일치하지 않습니다.", "bounceInDown", "확인");						
					}else{
						$(".my-name").text($("#userVo input[name=name]").val());
						$(".my-station").text($("#userVo input[name=station]").val());
						$(".my-atype").text($("#userVo input[name=atype]").val()=="manager"?"간부":"병사");
						$(".my-atype2").text($("#userVo input[name=atype2]").val()=="army"?"육군":$("#userVo input[name=atype2]").val()=="navy"?"해군":"공군");
					}
				}, 
				error : function(err, err2, err3) {
					loadAni(false);
					createPopup("exclamation-triangle","오류가 발생했습니다.<br/>자세한 사항은 문의를 주세요.", "bounceInDown");
				} 
			});
           
        }
        
        
        // 회원 승인 처리
        function signUser(idx,i) {
        	loadAni(true);   		
    		$.ajax({ 
    			type : "POST",
    			dataType : "JSON",	
    			async: true,
    			url : "/user/sign/"+idx,	
    			beforeSend : function(xhr){
    				xhr.setRequestHeader("authorization", getCookie("token"));
    				xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    			},
    			success : function(data){  	
    				console.log(data);
    				$(i).parents("tr").fadeOut();
    				loadAni(false); 
    			}, 
    			error : function(err, err2, err3) {			
    				loadAni(false);
    				createPopup("exclamation-triangle","오류가 발생했습니다.<br/>자세한 사항은 문의를 주세요.", "bounceInDown");
    			} 
    		});   
        }
        
        // 미승인 회원 목록 로드
        function loadNotSignedUser() {
        	loadAni(true);   		
    		$.ajax({ 
    			type : "GET",
    			dataType : "JSON",	
    			data : { "type" : "notSigned" },
    			async: true,
    			url : "/users",	
    			beforeSend : function(xhr){
    				xhr.setRequestHeader("authorization", getCookie("token"));
    				xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    			},
    			success : function(data){  	
    				console.log(data);
    				var content = "";
    				$.each(data.data, function(index, value){	  					
    					
    					content += '<tr data-title="'+value.name+', '+value.id+'">';
    					content += '<td>'+value.idx+'</td>';
    					content += '<td>'+value.station+'</td>';
    					content += '<td>'+( value.name ) + '(' + (value.id) + ')' +'</td>';
    					
    					content += '<td>'+value.email+'</td>';
    					content += '<td>'+value.phonenm+'</td>';
    					content += '<td>'+value.signDate+'</td>';
    					
    					content += '<td><a class="comm-btn-style small" style="width: 90px;" onclick="signUser('+value.idx+',this)">승인</a></td>';
    					
    					content += '</tr>';   					
    				});   				
    				$(".u-list-count").text(data.data.length);
    				$("#u-list").html(content);
    				
    				loadAni(false); 
    			}, 
    			error : function(err, err2, err3) {			
    				loadAni(false);
    				createPopup("exclamation-triangle","오류가 발생했습니다.<br/>자세한 사항은 문의를 주세요.", "bounceInDown");
    			} 
    		});   
        }
        
        // 설문 목록 로드
        function loadSurveyList(type) {
        	
        	if(type=="process") {  
        		loadAni(true);   		
        		$.ajax({ 
        			type : "GET",
        			dataType : "JSON",	
        			data : { "type" : "progress" },
        			async: true,
        			url : "/surveys",	
        			beforeSend : function(xhr){
        				xhr.setRequestHeader("authorization", getCookie("token"));
        				xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        			},
        			success : function(data){  	
        				console.log(data);
        				var content = "";
        				$.each(data.data, function(index, value){	  					
        					content += '<tr class="pf'+(value.progressFlag==true?"T":"F")+' tg_'+(value.bTarget)+'" data-title="'+value.title+'">';
        					content += '<td>'+( data.data.length - index )+'</td>';
        					content += '<td>'+value.regdate.split(" ")[0]+'</td>';
        					content += '<td>'+(value.bTarget=="all"?"전체":value.bTarget=="manager"?"간부":"병사")+'</td>';
        					content += '<td class="tit"><a class="title" href="/process/'+value.idx+'">';
        					
        					if(value.progressFlag==true) {
        						content += '<i style="color: #f63c48" class="fa fa-play-circle"></i>&nbsp;';
        						content +=  value.title + ' [<strong>D-'+value.dDay+'</strong>]';
        					}else{
        						content += '<i style="color: #000" class="fa fa-hourglass-end"></i>&nbsp;';
        						content += value.title;
        					}
        					
        					content += '</a></td>';
        					content += '<td>'+value.name+'</td>';
        					content += '<td class="date">'+value.startdate.split(" ")[0]+'</td>';
        					content += '<td class="date mobile-hidden">'+value.enddate.split(" ")[0]+'</td>';
        					content += '</tr>';   					
        				});   				
        				$(".pro-survey-list-count").text(data.data.length);
        				$("#pro-survey-list").html(content);
        				loadAni(false); 
        			}, 
        			error : function(err, err2, err3) {			
        				loadAni(false);
        				createPopup("exclamation-triangle","오류가 발생했습니다.<br/>자세한 사항은 문의를 주세요.", "bounceInDown");
        			} 
        		});   
        	} else {
        		loadAni(true);
        		$.ajax({ 
        			type : "GET",
        			dataType : "JSON",				
        			async: true,
        			url : "/surveys",	
        			beforeSend : function(xhr){
        				xhr.setRequestHeader("authorization", getCookie("token"));
        				xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        			},
        			success : function(data){
        				console.log(data);
        				var content = "";    
        				$.each(data.data, function(index, value){	      					
        					content += '<tr data-title="'+value.title+'" class="tg_'+(value.bTarget)+'">';
        					content += '<td>'+( data.data.length - index )+'</td>';
        					content += '<td>'+value.regdate.split(" ")[0]+'</td>';
        					content += '<td>'+(value.bTarget=="all"?"전체":value.bTarget=="manager"?"간부":"병사")+'</td>';
        					content += '<td class="tit"><a class="title" href="/view/'+value.idx+'">';
        					
							content += '<i style="color: #f63c48;" class="fa fa-chart-line"></i>';
        					
        					content += '&nbsp;';

        					content += value.title;
        					
        					content += '</a></td>';
        					content += '<td class="date">'+value.startdate.split(" ")[0]+'</td>';
        					content += '<td class="date mobile-hidden">'+value.enddate.split(" ")[0]+'</td>';
        					content += '</tr>';
        					
        				});
        				$(".my-survey-list-count").text(data.data.length);
        				$("#my-survey-list").html(content);     				
        				loadAni(false);  
        			}, 
        			error : function(err, err2, err3) {				
        				loadAni(false);
        				createPopup("exclamation-triangle","오류가 발생했습니다.<br/>자세한 사항은 문의를 주세요.", "bounceInDown");
        			} 
        		});
        	}
        	
        }
        
        
        loadSurveyList("process");
        loadSurveyList("my");
        loadNotSignedUser();
        
        $(".f_1_sel ul li a").click(function(){
    		var txt = $(this).text(); 
    		$(this).parents(".select_box").find("> div").html(txt); 
    		$(this).parents(".select_box").find("input[type=hidden]").val($(this).attr("data-val"));
    		
    		if($(this).attr("data-val")=="PROGRESS"){
    			$("#pro-survey-list tr.pfF").addClass("displayNone");
    		}else{
    			$("#pro-survey-list tr").removeClass("displayNone");	
    		}
    	});
        
        $(".f_2_sel ul li a").click(function(){
    		var txt = $(this).text(); 
    		$(this).parents(".select_box").find("> div").html(txt); 
    		$(this).parents(".select_box").find("input[type=hidden]").val($(this).attr("data-val"));
    		
    		var tbodyClass = $(this).parents(".f_2_sel").attr("data-target");
    		
    		$("#"+tbodyClass+" tr").addClass("displayNone");
    		
    		
    		
    		if($(this).attr("data-val")=="all"){
    			$("#"+tbodyClass+" tr").removeClass("displayNone");
    		}else {
    			$("#"+tbodyClass+" tr.tg_"+$(this).attr("data-val")).removeClass("displayNone");
    		} 
    	});
        
        function saerchK(i) {
       
        	var t = $(i).attr("data-target");
        	var v = $(i).val().trim();
        	//console.log(v);
        	
        	$("#"+t+" tr").removeClass("displayNone");
        	if(v=="") {   
        		return;
        	}
        	
        	$("#"+t+" tr").each(function(index, value){
        		var title = $(this).attr("data-title");
        		if(title.indexOf(v) != -1){
        			$(this).removeClass("displayNone");
        		}else{
        			$(this).addClass("displayNone");
        		}
        	});
        	
        }
    	
        
    </script>
    
	
</body>
</html>