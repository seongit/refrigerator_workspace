<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import =" java.util.ArrayList, com.refrigerator.recipe.model.vo.Review
				,com.refrigerator.category.model.vo.*
				,com.refrigerator.reicpe_order.model.vo.*
				, com.refrigerator.recipe.model.vo.*" %>
				
<%

	String alertMsg = (String)request.getAttribute("alertMsg");
	ArrayList<Review> list = (ArrayList<Review>)request.getAttribute("list");
	ArrayList<RecipeOrder>list2 = (ArrayList<RecipeOrder>)request.getAttribute("list2");
	
	Recipe rc = (Recipe)request.getAttribute("rc");
	
	int userNo = (int)request.getAttribute("userNo");
	int recipeNo = (int)request.getAttribute("recipeNo");

%>
																						<!-- @author seong -->
																						<!-- @date 0528 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레시피 작성하기</title>

   <style>

    .total-outer{
        margin:auto;
        margin-top:50px;
        width: 500px;
        height: 700px;
        border: 1px solid ;
        border-color:rgb(0, 153, 102);
    }

    .outer {
        font-size: 12px;
    }

    .input-type {
        width: 300px;
        height: 30px;
        margin: 20px;
    }

	
	#reviewImg:hover{
		cursor:pointer;
	}
	
    .star{
    display:inline-block;
    width: 30px;
    height: 60px;
    cursor: pointer;
    }

    .star_left{
    background: url(http://gahyun.wooga.kr/main/img/testImg/star.png) no-repeat 0 0; 
    background-size: 60px; 
    margin-right: -3px;
    }

    .star_right{
    background: url(http://gahyun.wooga.kr/main/img/testImg/star.png) no-repeat -30px 0; 
    background-size: 60px; 
    margin-left: -3px;
    }

    .star.on{
    background-image: url(http://gahyun.wooga.kr/main/img/testImg/star_on.png);
    }
	

    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
	
	</head>
	<body>
	
		<%@ include file="../common/user/menubar.jsp" %>
		
		<div class="total-outer">
		
				<a type="button" href="javascript:history.back();">&times;</a>
    		
		    	<form action="<%=contextPath%>/insertReview.recipe" method="post" id="enroll-form" enctype="multipart/form-data">
		        
        		<input type="hidden" name="userNo" value="<%=userNo%>">
				<input type="hidden" name="recipeNo" value="<%=recipeNo%>">
		        
		        <div class="outer">
		            
		            <br><br> <br>
		            <h5 align="center">후기를 남겨볼까요?</h5>
		            
		            <br>
		
		            <hr>
		            <br>
		           
			            <div align="center">
				            <h6>
						                    한 장이라도 좋아요 <br>
						                    완성된 요리를 자랑해주세요
			                </h6><br><br>
				             <a data-toggle="tooltip" title="인증샷 자랑하기! ">
				                <img id="reviewImg" width="150px" height="150px">
				             </a>
			            </div>
		          
		            
		            <script>
                        $(document).ready(function(){
                          $('[data-toggle="tooltip"]').tooltip();
                        });
                    </script>
		            
		            <br>
		            
		            <div align="center">
		
		                <h6>이 요리의 별점은?</h6>
						
						<!-- 별점은 아래의 코드로 입력 부탁드립니다.-->
						<div>
							<br>
							<select name="starCount" id="starCount" >
								<option value="0.5">😢 많이 별로였어요..</option>
								<option value="1"> 😓 조금 곤란한 맛이에요 </option>
								<option value="1.5">🤔 그냥 그랬어요</option>
								<option value="2"> 😐 나쁘지는 않아요</option>
								<option value="2.5"> 😗 괜찮았는데 아쉬웠어요  </option>
								<option value="3" selected> 😊 감사해요  </option>
								<option value="3.5"> 😋  냠냠</option>
								<option value="4"> 😝 맛있어요!</option>
								<option value="4.5"> 😘 다음에 또 만들어볼래요!</option>
								<option value="5">🥰완전 최고! 이 레시피를 추천할래요</option>
							</select>
						</div>
						
	
		            		<!-- 이 영역은 작업 중입니다.-->	
							<!--
		                    <div class="star-box" name="star">
		                        <span class="star star_left">
									<input type="hidden" value="0.5" name="starCount">
								</span>
		                        <span class="star star_right" >
									<input type="hidden" value="1" name="starCount">
								</span>
		                    
		                        <span class="star star_left">
									<input type="hidden" value="1.5" name="starCount">
								</span>
		                        <span class="star star_right">
									<input type="hidden" value="2" name="starCount">
								</span>
		                    
		                        <span class="star star_left" >
									<input type="hidden" value="2.5" name="starCount">
								</span>
		                        <span class="star star_right">
									<input type="hidden" value="3" name="starCount">
								</span>
		                    
		                        <span class="star star_left" >
									<input type="hidden" value="3.5" name="starCount">
								</span>
		                        <span class="star star_right">
									<input type="hidden" value="4" name="starCount">
								</span>
		                        
		                        <span class="star star_left">
									<input type="hidden" value="4.5" name="starCount">
								</span>
		                        <span class="star star_right">
									<input type="hidden" value="5" name="starCount">
								</span>
		                    </div>
							-->
						
	
							
	
		                    <!--별점 관련 스크립트-->
		                    <script>
								
								
		                       		$(".star").on('click',function(){
									
		                            var idx = $(this).index();
									
		                            	$(".star").removeClass("on");
	
		                                for(var i=0; i<=idx; i++){
											
											$(".star").eq(i).addClass("on");
											console.log($(".star").children().eq(i).val());
	
										}
										
			                        });
	
									/* 
									백업용
	
									$(".star").on('click',function(){
									
		                            var idx = $(this).index();
		                            $(".star").removeClass("on");
		                                for(var i=0; i<=idx; i++){
		                                    $(".star").eq(i).addClass("on").;
		                           		 }
									
		                               
			                        });
	
									*/
									
							/*리뷰 이미지 미리보기 기능*/
		
							
							function loadImg(inputFile,num){
										
								 	if(inputFile.files.length == 1){

								 		var reader = new FileReader();
								 		 
								 		reader.readAsDataURL(inputFile.files[0]);
								 		reader.onload = function(e){
								 			 $("#reviewImg").attr("src",e.target.result);
								 		 }
								 		
								 	}else{
								 		$("#reviewImg").attr("src",null);
								 	}
										
							}
							
							
		                    </script>
							
	

		                

		                <div class="input-type" id="file-area">
		                    <input type="file" id="reviewImg1" onchange="loadImg(this,1)" class="form-control-file border" name="reviewUpfile" required>
		                </div>
		
		                <div class="input-type">
							<textarea cols="55" rows="3" placeholder="자세한 리뷰는 다른 쉐프님들께 큰 도움이 될 거예요" style="font-size: 11px; resize: none; "  class="form-control form-control-sm" name="content" required></textarea>
		                </div>
						<br>
		                <div class="input-type">
		                    <button type="submit" class="btn btn-block" style="background-color: rgb(0, 153, 102); color:white" >완료</button>
		                </div>
		

		            </div>
		        </div>
		    </form> 
	    </div>
	    
	    
		               	<!-- 이미지 영역 클릭시 파일 삽입 -->
		               
		                <script>
		                $(function(){
		                	
		                	$("#file-area").hide();
		                	$("#reviewImg").click(function(){
		                		$("#reviewImg1").click();	
		                	})
		                })
		
		                </script>




</body>
</html>