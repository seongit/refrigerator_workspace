<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script><style></style>
<style>
    @import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
        body { font-family: 'Noto Sans KR', sans-serif; }
    .idPwd-outer{
        position: absolute;
        left: 50%;
        top: 50%;
        margin-left:-250px;
        margin-top:-300px;
    }
    .join{
        position: relative;
        width:100%;
        height:100%;
        width:500px;
    }
    .idPwd-inner {
        margin: 80px auto;
    }
    .idPwd-find ul{
        border: 1px solid #ddd;
        border-radius: 8px;
        box-sizing: border-box;
        background: #009764;
        width: 100%;
        height: 50px;
        padding: 0;
    }
    .idPwd-find ul li{
        list-style: none;
        margin-left: 10px;
        margin-top: 10px;
        padding: 0 30px 0 80px;
        display: inline;
        line-height: 45px;
    }
    .idPwd-find a{
        text-decoration: none;
        color: #fff;
        font-size: 16px;
    }

    .find-txt01{
        font-size: 21px;
        margin: 70px 0 50px;
        line-height: 1.5;
        text-align: center;
        letter-spacing: -0.4px;
        font-weight: 400;
    }
    .find-txt02{
        font-size: 13px;
        color: #636363;
        margin: 10px 0 20px 60px;
        line-height: 1;
        letter-spacing: -0.2px;
    }
    .idPWd-verify, .id-verify{
        border: 1px solid transparent;
        border-radius: 8px;
        box-sizing: border-box;
        background: #f4f4f4;
        width: 100%;
        height: 250px;
        padding: 0;
    }
    .idPWd-verify h3 , .id-verify h3{
        margin: 20px 30px 10px 30px;
    }
    .idPWd-verify li {
        list-style: none;
        float: left;
        border: solid 1px #c2c2c2;
        background: white;
        border-radius: 6px;
        text-align: center;
        position: relative;
        width: 450px;
        padding: 41px 0 36px;
        margin: 20px 24px;
    }
    .idPWd-verify a{
        text-decoration: none;
        color: #333;
    }
    .id-verify{
        height: 330px;
    }
    
    .find-wrap01 li{
        list-style: none;
        display: inline;
        
    }
    .dsn {
        display: none !important;
    }
    .input-style01{
        width: 430px;
        padding: 10px 15px 10px 15px;
        margin: 2px 20px;
        border: solid 1px #c2c2c2;
        background: white;
        border-radius: 6px;
        font-size: 14px;
        letter-spacing: -0.9px;
        height: 20px;
    }
    .input-style02{
        width: 460px;
        height: 38px;
        padding: 10px 15px 10px 15px;
        margin: 2px 20px;
        border: solid 1px #c2c2c2;
        background: rgb(178, 218, 187);
        border-radius: 6px;
        font-size: 14px;
        letter-spacing: -0.9px;
        cursor: pointer;
    }
    .blank{height: 4px;}
    .marT40 {
        margin: 30px 0 0;
    }
    .btn-next{
        width: 460px;
        height: 48px;
        margin: 0 20px;
        border-radius: 8px;
        color: #fff;
        background: #009764;
        border: 0;
        outline: 0;
        cursor: pointer;
    }
    .btn-next > a {
        display: block;
        height: 60px;
        line-height: 50px;
        font-size: 17px;
        color: #fff;
        text-align: center;
        text-decoration:none;
    }

    /*간편찾기*/
    .input_label{
        background: rgb(155, 192, 161);
        width: 95%;
        margin: 5px 13px;
        height: 35px;
        text-align: center;
        font-size: 14px;
        line-height: 35px;  /*글씨 세로위치*/
        border-radius: 10px;
        border: none;
    }
    span{
        border: 1px solid rgb(203, 218, 235);
        width: 95%;
        height: 90px;
        margin-top: 5px;
        border-radius: 10px;
        box-sizing: border-box;
        
    }
    .input-wrap{
        border: none;
    }
    
    
</style>
</head>
<body>

    <!--헤더부분뺀 전체바디영역-->
    <div class="idPwd-outer">

        <!--입력폼 전체-->
        <div class="join idPwd-inner">

            <!-- 아이디찾기 / 비밀번호재설정 -->
            <div class="idPwd-find">
                <ul>
                    <li>
                        <a href="<%= contextPath %>/findId.me">아이디 찾기</a>
                    </li>
                    <li>
                        <a href="<%= contextPath %>/findPwd.me">비밀번호 재설정</a>
                    </li>
                </ul>
            </div>

            <div class="find-txt01">
                비밀번호를 재설정하려면 본인확인이 필요합니다.
            </div>

            <ul class="idPWd-verify">
                <h3>본인인증</h3>
                <p class="find-txt02">
                    본인 명의의 휴대전화 인증으로 비밀번호를 조회합니다.
                </p>
                
                <li>
                    <a href="" onclick="">
                        <img src="" alt="">
                        <strong>휴대전화 인증</strong>
                    </a>
                </li>
            </ul>

            <form action="<%=contextPath%>/findPwd.member" id="myFrm" method="post" class="pwd-verify">
                <h3 style="margin: 15px 0 0 27px;">간편찾기</h3>
                
                <p class="find-txt02">
			                    회원가입 시 등록하신 정보로 비밀번호를 재설정 합니다.<br>
			                    인증번호를 전송 받을 수단을 선택하시고 전송된 인증번호를 정확하게 <br>
			                    입력해주세요.
                </p>
                
                <!--사용자 입력창-->

                    <span class="input-wrap">
                        <div>   
                            <label class="dsn" for="userId">아이디</label>
                            <input type="text" placeholder="아이디" title="이름" class="input-style01" name="userId" id="userId" required>
                        </div>
                        
                        <div>
                            <label class="dsn" for="user-phone-email" id="user-phone-email-label">이메일 주소</label>
                            <input type="text" placeholder="이메일 주소" title="휴대폰번호" class="input-style01 isPhoneEvent isPhone" 
                                   name="email" id="user-phone-email">
                            <input type="submit" value="이메일로 인증번호 전송" title="휴대폰번호" class="input-style02 isPhoneEvent isPhone" 
                                   name="sendEmail" id="user-phone-email">
                        </div>            
                    </span>    
            </form>
            
            <form action="<%=contextPath%>/findPwdAfter.member" method="post">
                        <div>
                            <label class="dsn" for="user-phone-email" id="user-phone-email-label">이메일 주소</label>
                            <input type="text" placeholder="이메일 인증번호를 입력하세요." title="인증번호" class="input-style01 isEmailEvent isEmail" 
                                   name="authEmail" id="authEmail">
                            <!-- 인증번호 유효성 검사 -->
                            <div  id="authCheck" name="authCheck"></div>
                            <div  class="compare-text" id="compare-text" name="compare-text"></div>
                        </div>    
                       
                
                    <div class="marT40">
                        <div >
                            <button class="btn-next" type="submit">다음</button>
                        </div>
                    </div>
            </form>
            

        </div>
        
        <script>
            $("#authEmail").focusout(function() {
            
            // 아이디 유효성검사
            var authEmail = $("#authEmail").val();
            var authString = '인증번호';

            if(authString.test(authEmail)){ //검증을 통과 했다면
                $("#userId").css("border", "");
                    
            }else {//검증을 통과 하지 못했다면 
                $("#authCheck").text("인증번호를 입력해주세요.");
                $("#authEmail").css("border", "1px solid #009764");
                $("#authCheck").css("color", "#009764");
                $("#signUp_Submit").attr("disabled", true);
                return;
            }
        });

            $(".authCheck").on("propertychange change keyup paste input", function() {
		        if ($(".authCheck").val() == checkNum) {   //인증 키 값을 비교를 위해 텍스트인풋과 벨류를 비교
                    $(".compare-text").text("인증 성공!").css("color", "black");
                    isCertification = true;  //인증 성공여부 check
		        } else {
                    $(".compare-text").text("불일치!").css("color", "red");
                    isCertification = false; //인증 실패
		        }
	        });

            $(".btn-next").click(function(){
                if(isCertification==false){ //인증이 완료되지 않았다면
                    alert("메일 인증이 완료되지 않았습니다.");
                }
            });
        </script>

        

        


    </div>
    



</body>
</html>