<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.refrigerator.member.model.vo.Member"%>
<%
	String contextPath = request.getContextPath(); 
	Member findUser = (Member)session.getAttribute("findUser");
	String alertMsg = (String)session.getAttribute("alertMsg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script><style></style>
<style>
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

    /*????????????*/
    .input_label{
        background: rgb(155, 192, 161);
        width: 95%;
        margin: 5px 13px;
        height: 35px;
        text-align: center;
        font-size: 14px;
        line-height: 35px;  /*?????? ????????????*/
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

    <!--??????????????? ??????????????????-->
    <div class="idPwd-outer">

        <!--????????? ??????-->
        <div class="join idPwd-inner">

            <!-- ??????????????? / ????????????????????? -->
            <div class="idPwd-find">
                <ul>
                    <li>
                        <a href="<%= contextPath %>/findId.me">????????? ??????</a>
                    </li>
                    <li>
                        <a href="<%= contextPath %>/findPwd.me">???????????? ?????????</a>
                    </li>
                </ul>
            </div>

            <div class="find-txt01">
                ????????? ????????? ?????? ?????? ??? ????????? ???????????????.
            </div>

            <ul class="idPWd-verify">
                <h3>????????????</h3>
                <p class="find-txt02">
                    ?????? ????????? ???????????? ???????????? ???????????? ???????????????.
                </p>
                
                <li>
                    <a href="" onclick="">
                        <img src="" alt="">
                        <strong>???????????? ??????</strong>
                    </a>
                </li>
            </ul>

            <form action="<%=contextPath %>/findId.member" id="myFrm" method="post" name="myFrm" class="id-verify">
                		
                <h3>????????????</h3>
                
                <p class="find-txt02">
                    ??????????????? ????????? ????????? ???????????? ????????????.<br>
                    ???????????? ????????? ?????? ?????? ????????? ?????? ????????????.
                </p>
                
                <!--????????? ?????????-->
                <span class="input-wrap">

                    <div>   
                        <label class="dsn" for="userName">??????</label>
                        <input type="text" placeholder="??????" title="??????" class="input-style01" name="userName" id="userName" required>
                    </div>
                    
                    <div>
                        <label class="dsn" for="user-phone-email" id="user-phone-email-label">??????????????????</label>
                        <input type="text" placeholder="???????????? ?????? (????????? ??????)" title="???????????????" class="input-style01 isPhoneEvent isPhone" name="phone" id="user-phone-email" required>
                    </div>            
                    
                    <div>
                        <label class="dsn" for="user-phone-email" id="user-phone-email-label">????????? ??????</label>
                        <input type="text" placeholder="?????????" title="?????????" class="input-style01 isEmailEvent isEmail" name="email" id="user-phone-email" required>
                    </div>            
                    
                </span>

                
                <div class="marT40">
                    <div >
                        <button class="btn-next" type="submit">??????</button>
                    </div>
                </div>
            </form>

        </div>

        





    </div>


</body>
</html>