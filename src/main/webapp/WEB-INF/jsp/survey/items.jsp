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
    
    
    <link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />

<!-- <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script> -->

<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" ></script>


	
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
				<div class="inner"style="padding-top: 50px;">
					
					<div class="normal-title-head">
						<h1 class="tit">Step 2. 설문 항목</h1>
						<span class="cat">Survey Items</span>
					</div>
					
					
					<style>
.surveyGroups {
display: block;
margin-top: 30px;
}
.surveyGroups li {
    display: block;
    border: 1px solid #c2c2c2;
    border-radius: 3px;
    padding: 20px 80px 20px 20px;  
    margin-bottom: 30px;
    position: relative;
/*     background: #fff;  */
}
.surveyGroups li .title {
    font-size: 20px;
    margin-left: 20px;
    position: relative;
    box-sizing: border-box;
    background: transparent;
}
.surveyGroups li .irows {margin-top: 10px;}
.surveyGroups li .radio-style:checked + label:before, 
.surveyGroups li .radio-style:not(:checked) + label:before {
    top: 5.5px;
}
.surveyGroups li .radio-style:checked + label:after, 
.surveyGroups li .radio-style:not(:checked) + label:after {
    top: 9.5px;
}
.surveyGroups li input[type=text] {
    display: inline-block;
    width: 450px;
    box-sizing: border-box;
    border: 0px;
    height: 100%;
    padding: 10px 10px 10px 15px;
    background: transparent;
    font-size: 14px;
    letter-spacing: -1px;
    color: #000;
    border: 1px solid #efefef;
    box-sizing: border-box;
    border-radius: 5px;
    border: 1px solid #c2c2c2;
    background: #fff;
}
.surveyGroups li .delete {
	margin-left: 15px;
	display: inline-block;
    font-size: 20px;
    position: relative;
    top: 5px; cursor: pointer;
}
.surveyGroups li .title > .numb {
    position: absolute; width: 10px; line-height: 53px; font-weight: bold;
    top: 0; bottom: 0; margin: 0 auto;
}
.surveyGroups li .title > input[type=text] {
    display: block;
    width: calc(100% - 34px);
    box-sizing: border-box;
    border: 0px;
    height: 100%;
    padding: 15px 10px 15px 15px;
    background: transparent;
    font-size: 18px;
    letter-spacing: -1px;
    color: #000;
    border: 1px solid #c2c2c2;
    box-sizing: border-box;
    border-radius: 5px;
    margin-left: 34px;
    background: #fff;
}
.surveyGroups li .irow {padding: 5px 0px;}
.surveyGroups li .plus {
    height: 30px; line-height: 30px; font-size: 14px; width: 100px;
    margin-left: 20px; margin-top: 15px;
} 
.surveyGroups li .x {position: absolute; top: 20px; right: 25px; font-size: 24px; cursor: pointer;}
</style>

			
			




					<form id="surveyItem" name="surveyItem" onsubmit="return false;">
						<ul id="surveyGroup" class="surveyGroups">
						    
						  <!--  <li>
						    	<a class="x"><i class="fa fa-times"></i></a>
								<div class="title">
								    <span class="numb">1. </span>    
								    <input type="text" placeholder="항목의 질문 내용을 입력하세요.."/>
								</div>
								<div class="irow">
									<input class="radio-style" type="checkbox" id="i1" >
									<label for="i1" style="margin-left: 20px;"><input type="text" placeholder="항목의 질문 내용을 입력하세요.."/></label>
								</div> 
								<div class="irow">
									<a class="comm-btn-style plus">답변문항 추가</a>
								</div>
						    </li>
						    
						    <li>
						        <div class="title" style="margin-bottom: 0px;">
						            <span class="numb">2. </span>    
						            <input type="text" placeholder="항목의 질문 내용을 입력하세요.."/>
						        </div>
						    </li> -->
						 
						
						</ul>        
						
						
						<div style="text-align: center; margin-top: 30px;">
							
							<input class="radio-style" type="radio" id="atypeSel" name="qtypeSelect" value="qtype1" checked="checked">
							<label for="atypeSel" style="margin-right: 10px;">객관식</label>
							<input class="radio-style" type="radio" id="atypeSel2" name="qtypeSelect" value="qtype2">
							<label for="atypeSel2">주관식</label>
						
						    <a class="comm-btn-style" style="margin-left: 30px; cursor: pointer;" onclick="addItem()">질문항목 추가</a>
						</div>       
	
						<div class="profile-modify-bottom" style="margin-bottom: 100px;">
							<a class="comm-btn-style" style="float:left; cursor:pointer;" onclick="saveItems(false)">임시저장</a>
							<a class="comm-btn-style red" style="float: right; cursor: pointer;" onclick="saveItems(true)">저장</a>
						</div>
					</form>
					
				
					
				</div>
				
				
				
				<script>
				
				$(function() {
				    $("#surveyGroup").sortable({

				        //placeholder:"itemBoxHighlight",

				        start: function(event, ui) {

				            //ui.item.data('start_pos', ui.item.index());

				        },

				        stop: function(event, ui) {

				            //var spos = ui.item.data('start_pos');
				            //var epos = ui.item.index();

				            itemOrdering();

				        }

				    });
				    $("#surveyGroup").disableSelection();
				});
				
				// 순서 정렬
				function itemOrdering(){
					
					var len = $("#surveyGroup li").length;
					$("#surveyGroup li").each(function(index, value){
						var newNumb = index+1;
						$(this).find("input[name=corder]").val(newNumb);
						$(this).find("span.numb").text(newNumb+". ");
						$(this).find("span.numb").attr("data-numb",newNumb);
					});
					
				}
				
				function saveItems(moveFlag) {
					
					loadAni(true);
					
					
					let today = new Date();
					let year = today.getFullYear(); // 년도
					let month = today.getMonth() + 1;  // 월
					let date = today.getDate();  // 날짜
					let day = today.getDay();  // 요일
					
					let hours = today.getHours(); // 시
					let minutes = today.getMinutes();  // 분
					let seconds = today.getSeconds();  // 초
					
					var nowDate = year + '-' + month + '-' + date + " " + hours + ':' + minutes + ':' + seconds;
					
					var ajaxCount = 0;
					var itemCount = $("#surveyGroup li").length; // 총 문항수
					//console.log("총 문항 수: " + itemCount);
					
					$.each($("#surveyGroup li"), function(n, i) {
						
						var corder = $(i).find("input[name=corder]").val();
						var qtype = $(i).find("input[name=qtype]").val();
						var note = $(i).find("input[name=note]").val();
						var res = "";
						$.each($(i).find(".irows .irow"), function(n2, i2){
							
							var tmp = $(i2).find("input[name=res]").val();
							if(res!=""){res += '|';}
							res += tmp;
							
						});
						
						console.log(res);
						
						$.ajax({ 
							type : "POST",
							dataType : "JSON",
							data : {
								"corder" : corder,
								"qtype" : qtype,
								"note" : note,
								"responseNote" : res,
								"nowDate" : nowDate
							},
							async: true,
							url : "/survey/${survey.idx}",	 
							beforeSend : function(xhr){
								xhr.setRequestHeader("authorization", getCookie("token"));
								xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
							},
							success : function(data){							
								
								ajaxCount++;
								
								if(ajaxCount==itemCount) {
									loadAni(false);
									if(moveFlag) {
										location.href = "/my/";
									}else{
										loadItem();
									}
									
								}
							}, 
							error : function(err, err2, err3) {			
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
				
				function thisDetach(i) {
					
					var irows = $(i).parents(".irows");
					var len = $(irows).find(".irow").length;
					if(len==2) {
						createPopup("exclamation-triangle","객관식 질문은 최소 2개 이상의<br/>답변 문항이 존재해야 합니다.", "bounceInDown", "확인");
						return;
					}
					
					$(i).parents(".irow").detach(); 
				}
				
				function loadItem() {
					
					loadAni(true);
					
					$.ajax({ 
						type : "GET",
						dataType : "JSON",				
						async: false,
						url : "/survey/items/${survey.idx}",	
						beforeSend : function(xhr){
							xhr.setRequestHeader("authorization", getCookie("token"));
							xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
						},
						success : function(data){							
							console.log(data);
							
							$("#surveyGroup").html('');
							
							$.each(data.data, function(index, value){	
								
								var content = "<li class='ui-state-default'>";
								if(value.qtype=="multiple") {
									
									content += '<input type="hidden" name="corder" value="'+value.corder+'"/>';
									content += '<input type="hidden" name="qtype" value="multiple"/>';
									
									var n = 1;
									content += '<a class="x" onclick="delItem(this)"><i class="fa fa-times"></i></a>';
									content += '<div class="title">';
									content += '<span class="numb" data-numb="'+(value.corder)+'">'+(value.corder)+'. </span>';
									content += '<input type="text" name="note" value="'+value.note+'" placeholder="항목의 질문 내용을 입력하세요.."/>';
									content += '</div>';
									
									content += '<div class="irows">';
									//========================================
										
										var resArr = value.responseNote.split("|");
										for(var i=0;i<resArr.length;i++) {
											content += '<div class="irow">';
											content += '<input class="radio-style" type="radio" name="insel'+value.corder+'" id="ini'+value.corder+'_'+n+'" value="">';
											content += '<label id="ini'+value.corder+'_'+n+'" style="margin-left: 20px;">';
											content += '<input name="res" value="'+resArr[i]+'" type="text" placeholder="항목의 질문 내용을 입력하세요.."/>';
											content += '<a class="delete" onclick="thisDetach(this)"><i class="fa fa-minus-circle"></i></a>';
											content += '</label></div>';
											n++;
										}
										
									//========================================
									content += '</div>';
									  
									content += '<div class="irow">';
									content += '<a class="comm-btn-style plus" style="cursor:pointer;" onclick="addInItem(this)">답변문항 추가</a>';
									content += '</div>';
									
								}else{
									
									content += '<input type="hidden" name="corder" value="'+value.corder+'"/>';
									content += '<input type="hidden" name="qtype" value="answer"/>';
									
									content += '<a class="x" onclick="delItem(this)"><i class="fa fa-times"></i></a>';
									content += '<div class="title">';
									content += '<span class="numb">'+(value.corder)+'. </span>';
									content += '<input type="text" name="note" value="'+value.note+'" placeholder="항목의 질문 내용을 입력하세요.."/>';
									content += '</div>';
									
								}
								content += '</li>';
								$("#surveyGroup").append(content);
							});
							loadAni(false);
							
						}, 
						error : function(err, err2, err3) {			
							console.log("[ERROR]");
							console.log(err); console.log(err2); console.log(err3); 	
							loadAni(false);
						} 
					});
					
				}	
					
				function addItem() {
					
					var itemCount = $("#surveyGroup li").length; // 총 문항수
					var nextNumb = itemCount+1;
					
					
					
					var type = $("input[name=qtypeSelect]:checked").val();
					
					var content = "<li class='ui-state-default'>";
					
					if(type=="qtype1") {// 객관식
						
						content += '<input type="hidden" name="corder" value="'+nextNumb+'"/>';
						content += '<input type="hidden" name="qtype" value="multiple"/>';
						
						var n = 1;
						content += '<a class="x" onclick="delItem(this)"><i class="fa fa-times"></i></a>';
						content += '<div class="title">';
						content += '<span class="numb" data-numb="'+(nextNumb)+'">'+(nextNumb)+'. </span>';
						content += '<input type="text" name="note" placeholder="항목의 질문 내용을 입력하세요.."/>';
						content += '</div>';
						
						content += '<div class="irows">';
						content += '<div class="irow">';
						content += '<input class="radio-style" type="radio" name="insel'+nextNumb+'" id="ini'+nextNumb+'_'+n+'" value="1">';
						content += '<label id="ini'+nextNumb+'_'+n+'" style="margin-left: 20px;"><input name="res" type="text" placeholder="항목의 질문 내용을 입력하세요.."/></label>';
						content += '<a class="delete" onclick="thisDetach(this)"><i class="fa fa-minus-circle"></i></a>';
						content += '</div>';
						
						n++;
						content += '<div class="irow">';
						content += '<input class="radio-style" type="radio" name="insel'+nextNumb+'" id="ini'+nextNumb+'_'+n+'" value="2">';
						content += '<label id="ini'+nextNumb+'_'+n+'" style="margin-left: 20px;"><input name="res" type="text" placeholder="항목의 질문 내용을 입력하세요.."/></label>';
						content += '<a class="delete" onclick="thisDetach(this)"><i class="fa fa-minus-circle"></i></a>';
						content += '</div>';
						
						n++;
						content += '<div class="irow">';
						content += '<input class="radio-style" type="radio" name="insel'+nextNumb+'" id="ini'+nextNumb+'_'+n+'" value="3">';
						content += '<label id="ini'+nextNumb+'_'+n+'" style="margin-left: 20px;"><input name="res" type="text" placeholder="항목의 질문 내용을 입력하세요.."/></label>';	
						content += '<a class="delete" onclick="thisDetach(this)"><i class="fa fa-minus-circle"></i></a>';
						content += '</div>';
						
						content += '</div>';
						  
						content += '<div class="irow">';
						content += '<a class="comm-btn-style plus" style="cursor:pointer;" onclick="addInItem(this)">답변문항 추가</a>';
						content += '</div>';
					
					
					}else{// 주관식
						
						content += '<input type="hidden" name="corder" value="'+nextNumb+'"/>';
						content += '<input type="hidden" name="qtype" value="answer"/>';
						
						content += '<a class="x" onclick="delItem(this)"><i class="fa fa-times"></i></a>';
						content += '<div class="title">';
						content += '<span class="numb">'+(nextNumb)+'. </span>';
						content += '<input type="text" name="note" placeholder="항목의 질문 내용을 입력하세요.."/>';
						content += '</div>';
						
					}
					content += '</li>';
					
					$("#surveyGroup").append(content);
				}
				
				
				
				
				function addInItem(i) {
					
					//event.preventDefault();
					
					var itemCount = $(i).parents("li").find(".irows .irow").length; // 총 문항수
					var nextNumb = itemCount+1;
					
					var number = $(i).parents("li").find(".numb").attr("data-numb");
					
					var content = '';
					content += '<div class="irow">';
					content += '<input class="radio-style" type="radio" name="insel'+number+'" id="ini'+number+'_'+nextNumb+'" value="">';
					content += '<label id="ini'+number+'_'+nextNumb+'" style="margin-left: 20px;"><input name="res" type="text" placeholder="항목의 질문 내용을 입력하세요.."/></label>';
					content += '<a class="delete" onclick="thisDetach(this)"><i class="fa fa-minus-circle"></i></a>';
					content += '</div>';
					
					
					$(i).parents("li").find(".irows").append(content);
				}
				function delItem(i) {
					$(i).parents("li").detach();
				}
				</script>
				
				
			</div>
		</section>
		<!-- #####################################################################[컨테이너 끝] -->
		<!-- #####################################################################[하단 시작] -->
        <jsp:include page="../include/footer.jsp"/>
		<!-- #####################################################################[하단 끝] -->
	</section>
    
    <script>
        
        getUserInfo(function(data){
    
            var c = '<li><a href="/my">마이페이지</a></li><li><a href="/logout">로그아웃</a></li>';
            $("#header-priv").html(c);

            globalUser = data.data;
            //console.log(globalUser);
			
			loadItem(); 

        }, function(err){
            console.log("로그아웃 상태입니다.");
            location.href = "/";
        });
        
        
        
    </script>
    
	
</body>
</html>