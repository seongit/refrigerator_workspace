<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		//Jaewon
	String alertMsg = (String)session.getAttribute("alertMsg"); 
	
	/* Jaewon 어드민 로그인시 해당 페이지에 있을지 어드민 페이지로 넘어갈지 */
	String confirmMsg = (String)session.getAttribute("confirmMsg"); 
%>

		<script>
	 	var msg = "<%= confirmMsg %>"; 
	 	
	 	if(msg != "null"){
	 		if(confirm(msg)){// 확인시 어드민 페이지로 넘어감 
				location.href = "<%= request.getContextPath() %>/adList.me?currentPage=1";		
	 		}	 		
			<% session.removeAttribute("confirmMsg"); %>
	 	}
	 </script>
	

	<!--Jaewon -->
	<script>
	 	var msg = "<%= alertMsg %>"; 
	 	if(msg != "null"){
		 	alert(msg);	 
			<% session.removeAttribute("alertMsg"); %>
	 	}
	</script>
	

	<%@ include file="views/common/user/main.jsp" %>

	
	
</body>
</html>