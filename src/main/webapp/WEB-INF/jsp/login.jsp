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
				
				<!-- #####################################################################[레이어1] -->
				<div class="acc-layer login">
					<div class="in">	
						<div class="inner">
							  
							<div class="acc-box-wrapper">
								<form action="#" method="post" onsubmit="return loginFunc();">
									<div class="headline">
										<h2 class="tit">로그인</h2>
										<a class="sub" href="/join">회원가입</a>     
									</div>
									<div class="field-row">
										<input id="id" name="id" autocomplete="off" type="text" class="input-style1" placeholder="아이디(군번)" value="19-76039568"/>
									</div>	
									<div class="field-row">
										<input id="pw" name="pw" autocomplete="off" type="password" class="input-style1" placeholder="비밀번호" value="test1234"/>
									</div>	  
									<div class="field-row login-more-area">
										<input name="login1" type="checkbox" id="test1" name="radio-group">
										<label for="test1">아이디 저장</label>
										   
										<input name="login1" type="checkbox" id="test2" name="radio-group" checked="checked">
										<label for="test2" style="margin-left: 30px;">자동 로그인</label>
									</div>
									 
									<div class="field-row">
										<input type="submit" class="btn-login" value="로그인"/>
										
										<div class="p-vertical-10 p-horizontal-15">
											<a class="search-ment" href="#">아이디/비밀번호 찾기</a>
										</div>  
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
    function loginFunc() {
        
		loadAni(true);
    
        $.ajax({ 
            type : "POST",
            dataType : "JSON",
            data : {
                "id" : $("#id").val(),
                "pw" : $("#pw").val()
            },
            async: false,
            url : "/signin",	           
            success : function(data, txt, resp){
				
				loadAni(false);
				if(data.statusCode==200) {
					
					
					if(data.data.signFlag==false) {
						createPopup("exclamation-triangle","아직 가입 승인 대기 상태입니다.", "bounceInDown");
					}else{
						var toekn = resp.getResponseHeader("Authorization");       
						setCookie("token", toekn, 1);

						console.log(toekn);
						location.href = "/my";
					}
					
				}else {
					createPopup("exclamation-triangle","아이디와 비밀번호가 일치하지 않습니다.<br/>다시 시도해주세요.", "bounceInDown");
				}
                
            }, 
            error : function(err){
				loadAni(false);
				createPopup("exclamation-triangle","오류가 발생했습니다.<br/>자세한 사항은 문의를 주세요.", "bounceInDown");
                console.log("알 수 없는 오류가 발생했습니다."); 
                console.log(err);
            } 
        });
        
        
        
        return false;
    }
    </script>
	
</body>
</html>