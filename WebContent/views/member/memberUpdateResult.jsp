<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	boolean result = (boolean)request.getAttribute("updateResult");
%>

	<script>
	<%
		if(result){ %>
			
			alert('회원 정보가 수정되었습니다.');
		
	<%	}else{ %>
			
			alert('회원 정보 수정을 실패하였습니다.\n 지속적인 문제 발생 시 관리자에게 문의바랍니다.');
			
	<%	} %>
		location.replace("/views/member/memberPwdCheck.jsp");
	</script>

</body>
</html>