<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    
<!-- @author yeji -->

<%@ page import="java.util.ArrayList, com.refrigerator.notice.model.vo.Notice,
				 com.refrigerator.common.model.vo.PageInfo"%>
<%
	ArrayList<Notice> pageList = (ArrayList<Notice>)request.getAttribute("pageList");
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
    .outer{
        background: white;
        color: black;
        width: 1200px;
        margin: auto;
        margin-top: 50px;
    }
    
    .notice-list-area>thead>tr{
        border-bottom: 2px solid rgb(0, 120, 51);
        border-top: 2px solid rgb(0, 120, 51);
        font-weight: bold;
        text-align: center;
        height: 50px;
    }
    .notice-list-area>tbody>tr:hover{
        color: rgb(0, 120, 51);
        font-weight: bold;
        cursor: pointer;
    }
    .notice-list-area>tbody>tr{
        height: 45px;
        text-align: center;
        border-bottom: 1px solid darkgray;
    }
    #btn-noticeWrite{
        background: rgb(0, 120, 51);
        color: white;
    }
    #btn-noticeWrite:hover{
        background: white;
        color: rgb(0, 120, 51);
        border: 1px solid rgb(0, 120, 51);
        font-weight: bold;
        cursor: pointer;
    }
</style>
</head>
<body>

	<%@ include file="../common/user/menubar.jsp" %>

	<div class="outer">

        <br>
        <h2 align="center" style="font-weight:bold;">????????????</h2>
        <br>

        <%@ include file="../common/user/userSideBar.jsp" %>

	
		<!-- ????????? ?????? ????????? -->
		<% if(loginUser != null && loginUser.getUserId().equals("admin")){ %>
		    <div align="right" style="width: 1050px;">
	            <a href="" class="btn btn-sm" id="btn-noticeWrite">?????????</a>
		        <br><br>
		    </div>
		<%} %>
		
		<div class="noticeListView">
	        <!-- ????????? ???-->
	        <div id="notice-list">
	            <table class="notice-list-area" align="center">
	
	                <thead>
	                    <tr id="headline">
	                        <th width="70">?????????</th>
	                        <th width="400">?????????</th>
	                        <th width="100">?????????</th>
	                        <th width="130">?????????</th>
	                        <th width="70">?????????</th>
	                    </tr>
	                </thead>
	                <tbody>
	                	<%if(pageList.isEmpty()) {%>
	                		<tr>
	                			<td colspan="5"> ???????????? ??????????????? ????????????.</td>
	                		</tr>
	                	<%} else{ %>
	                		<%for(Notice n : pageList) {%>
		                        <tr>
		                            <td><%=n.getNoticeNo() %></td>
		                            <td><%=n.getNoticeTitle() %></td>
		                            <td><%=n.getUserNo() %></td>
		                            <td><%=n.getEnrollDate() %></td>
		                            <td><%=n.getCount() %></td>
		                        </tr>
	                        <%} %>
	                    <%} %>
	                </tbody>
	            </table>
	            
	        </div>
        
        </div>
        
        <script>
        	$(function(){
        		$(".notice-list-area>tbody>tr").click(function(){
        			var nno = $(this).children().eq(0).text();
        			//console.log(nno);
        			location.href = '<%=contextPath%>/detail.no?nno=' + nno;
        		})
        	})
        </script>
        <br>
        <!-- ???????????? -->
        <div align="center" class="paging-area">
        
				<% if(currentPage != 1) { %>
	            <button onclick="location.href='<%= contextPath%>/list.no?currentPage=<%=currentPage-1%>';"> &lt; </button>
				<% } %>
				
	            <% for(int p=startPage; p<=endPage; p++) {%>
	            	
	            	<% if(p != currentPage){ %>
		            	<button onclick="location.href='<%= contextPath%>/list.no?currentPage=<%=p%>';"><%= p %></button>
		            <% }else{ %>
		            	<button disabled><%= p %></button>
	            	<%} %>
	            	
	            <% } %>
	
				<% if(currentPage != maxPage) { %>
	            <button onclick="location.href='<%= contextPath%>/list.no?currentPage=<%=currentPage+1%>'"> &gt; </button>
				<% } %>
			
       	</div>
       	<br><br>
    </div>
    

</body>
</html>