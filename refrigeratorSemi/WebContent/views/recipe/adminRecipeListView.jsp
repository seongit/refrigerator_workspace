<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.refrigerator.recipe.model.vo.Recipe
				 , com.refrigerator.common.model.vo.PageInfo" %>
<!-- @author leeyeji -->
<%
	ArrayList<Recipe> pageList = (ArrayList<Recipe>)request.getAttribute("pageList");
	//ArrayList<Member> sList = (ArrayList<Member>)request.getAttribute("searchList");
	
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
    .outer{
        color: black;
        width: 1200px;
        margin: auto;
        margin-top: 50px;
    }
    .select-list>a{
        text-decoration: none;
        color: black;
    }
    .select-list a:hover{color: rgb(0, 120, 51);}
    .search-container button{
        background-color: rgb(0, 120, 51);
        color: white;
    }
    .member-btn a{
        background: rgb(0, 120, 51);
    }
    .checked-memberList>tr:hover{
        cursor: pointer;
        background-color: rgb(248, 248, 248);
        opacity: 0.7;
    }
    .thead{
        background-color: rgb(224, 224, 224);
    }
    .modal-body-list div{
        width: 200px;
        height: 30px;
        color: rgb(0, 120, 51);
        font-weight: bold;
        border-radius: 5px;
        text-align: center;
        margin: 10px;  
        font-size: 15px;
        line-height: 30px;
    }
    .modal-header, .modal-content, .modal-footer{border: 0px;}
</style>
</head>
<body>
    
    <div class="outer">

        <div class="select-list"  align="right" style="width: 250px;" >
            <a href="">회원 관리</a> >
            <a href="">회원 목록</a>
        </div>
        <br>

 

        <br><br>

        <form action="" method="GET">

            <div class="btn" align="right" style="width: 350px;">

                <!--<a class="btn btn-sm btn-danger" data-toggle="modal" data-target="#member-delete-Modal">회원삭제</a>-->

                     <!-- The Modal -->
                    <div class="modal" id="recipe-delete-Modal">
                    <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                
                        <!-- Modal body -->
                        <div class="modal-body">
                        <Strong>이 레시피</Strong>를 삭제하시겠습니까?
                        </div>
                
                        <!-- Modal footer -->
                        <div class="modal-footer"align="center">
                            <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">취소</button>
                            <button type="submit" class="btn btn-danger btn-sm">삭제</button>
                        </div>
                
                    </div>
                    </div>
                    </div>

            </div>
            <br>

            <div class="member-list">

                <table border="1" align="center">

                    <thead class="thead">
                        <tr align="center" >
                            <th width="50">번호</th> 
                            <th colspan="2" width="550">레시피 제목</th>
                            <th width="200">작성일</th>
                            <th width="100">삭제여부</th>
                            <th width="50"></th>
                        </tr>

                    </thead>
                
                    <tbody class="checked-memberList">
                    <%for(Recipe r : pageList) {%>
                        <tr align="center">
                        	
                            <td><%=r.getRecipeNo() %></td>
                            <td colspan="2"><%=r.getRecipeTitle() %></td>
                            <td><%=r.getRecipeWriter() %></td>
                            <%if(r.getStatus().equals("N")){ %>
                            	<td>게시중</td>
                            <%}else{ %>
                            	<td>삭제</td>
                            <%} %>
                            <td><a class="btn btn-sm btn-danger" data-toggle="modal" data-target="#recipe-delete-Modal" onclick="deleteMember();">삭제</a></td>
                        </tr>
					<% } %>

                    </tbody>

                </table>

            </div>

        </form>

        
    </div>

</body>
</html>