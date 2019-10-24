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
	<section id="wrapper" class="no-fix-menu">
	
		<!-- #####################################################################[상단 시작] -->
		<jsp:include page="./include/header2.jsp"/>
		<!-- #####################################################################[상단 끝] -->
		<!-- #####################################################################[컨테이너 시작] -->
		<section class="container push-top">	
			<div class="container_inner">	
				
				<div class="acc-layer join">
					<div class="in">	
						<div class="inner">
							  
							<div class="acc-box-wrapper v2">
								<form id="userVo" name="userVo" action="#" method="post" onsubmit="return joinFunc();">
									
									<div class="headline">
										<h2 class="tit">회원가입</h2>
										<a class="sub" href="/login">로그인</a>     
									</div>
									
									<div class="clearfix">
										<div class="fl">
											
											<div class="field-row">
												<input name="id" id="id" autocomplete="off" type="text" class="input-style1" placeholder="군번(아이디)" value=""/>
											</div>	
											<div class="field-row">
												<input name="password" id="pw" autocomplete="off" type="password" class="input-style1" placeholder="비밀번호 (영문/숫자 조합, 8자~16자)" value=""/>
											</div>	  
											<div class="field-row">
												<input id="pw2" autocomplete="off" type="password" class="input-style1" placeholder="비밀번호 확인" value=""/>
											</div>	
											
											<div class="field-row">
												<input name="name" id="name" autocomplete="off" type="text" class="input-style1" placeholder="이름" value=""/>
											</div>	
											
											<div class="field-row">
												<input name="email" id="email" autocomplete="off" type="text" class="input-style1" placeholder="이메일" value=""/>
											</div>
											<div class="field-row">
												<input name="phonenm" id="phonenm" autocomplete="off" type="text" class="input-style1" placeholder="핸드폰번호(010-XXXX-XXXX)" value=""/>
											</div>
													
										</div>
										<div class="fr">
											
											
											<div class="field-row">
												<input name="recruitDate" id="recruitDate" autocomplete="off" type="text" class="input-style1" placeholder="입대일(20190101)" value=""/>
											</div>
											<div class="field-row">
												<input name="station" id="station" autocomplete="off" type="text" class="input-style1" placeholder="소속부대" value=""/>
											</div>
											
											<div class="field-row">
												<div class="select_box"> 
													<div>장병 구분</div> 
													<input name="atype" id="atype" type="hidden" value=""/>
													<ul>
														<li><a data-val="manager">간부</a></li> 
														<li><a data-val="soldier">병사</a></li> 
													</ul>
												</div>
											</div>		
											<div class="field-row">
												<div class="select_box"> 
													<div>육해공 구분</div>
                                                    <input name="atype2" id="atype2" type="hidden" value=""/>
													<ul>
														<li><a data-val="army">육군</a></li> 
														<li><a data-val="navy">해군</a></li> 
														<li><a data-val="airforce">공군</a></li> 
													</ul>
												</div>
											</div>	
											
											<div class="field-row empty-border-box">
												<div class="ebb-row">
													<input class="policy-chbox" name="terms_1" type="checkbox" id="terms_1" name="radio-group">
													<label for="terms_1" style="margin-left: 30px;"><a class="underline" target="_blank" href="/terms/terms">서비스 이용약관</a>에 동의합니다.</label>
												</div>
												<div class="ebb-row">
													<input class="policy-chbox" name="terms_2" type="checkbox" id="terms_2" name="radio-group">
													<label for="terms_2" style="margin-left: 30px;"><a class="underline" target="_blank" href="/terms/privacy">개인정보 수집 및 이용약관</a>에 동의합니다.</label>
												</div> 
												<div class="ebb-row">
													<input class="policy-chbox" name="terms_3" type="checkbox" id="terms_3" name="radio-group">
													<label for="terms_3" style="margin-left: 30px;"><a class="underline" target="_blank" href="#">홍보 및 마케팅 정보 수신</a>에 동의합니다(선택)</label>
												</div>
											</div>
											
											<div class="field-row p-horizontal-15" style="margin-top: -10px; margin-bottom: 40px;">
												<input id="policy_all" name="login1" type="checkbox" name="radio-group">
												<label for="policy_all">위 항목에 모두 동의합니다.</label>
											</div>
													
										</div>
									</div>
									
									  
									<div class="field-row">
										<input type="submit" class="btn-login" value="회원가입"/>
									</div>
									
								</form>
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
    
    <script>
    function joinFunc() {
        
        if($("#pw").val() != $("#pw2").val()) {
            createPopup("exclamation-triangle","비밀번호와 비밀번호 확인이 일치하지 않습니다.", "bounceInDown", "확인");
            return false;
        }
        
        if($("#id").val()=="") {
			createPopup("exclamation-triangle","아이디를 입력해주세요.", "bounceInDown", "확인");
            return false;
		}
        
        
        var param = $("#userVo").serialize();
		
		loadAni(true);
        
        $.ajax({ 
            type : "POST",
            dataType : "JSON",
            data : param,
            async: false,
            url : "/signup",	           
            success : function(data){
				loadAni(false);
                location.href = './login';
            }, 
            error : function(err, err2, err3) {
				loadAni(false);
                console.log("알 수 없는 오류가 발생했습니다."); 
                console.log(err); 
                createPopup("exclamation-triangle","오류가 발생했습니다.<br/>자세한 사항은 문의를 주세요.", "bounceInDown");
            } 
        });
        
        
        return false;
    }
    </script>
	
</body>
</html>