<%@ include file="/common/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 회원정보수정</title>
</head>
<body>
<script src="/js/jquery-3.2.1.min.js"></script>
<script>
function check(){
	var nameValue = $("#name").val().trim();
	var pwdValue = $("#pwd").val().trim();
	if(nameValue==""){
		alert("이름 좀 적자!!");
		$("#name").val("");
		$("#name").focus();
		return false;
	}
	
	if(pwdValue==""){
		alert("비밀번호 좀 적자!!");
		$("#pwd").val("");
		$("#pwd").focus();
		return false;
	}
	return true;
}
</script>
<form action="sigin.user" method="post" onsubmit="return check()">
	<table border="1" cellspacing="0" cellpadding="0" width="400" align="center">
		<tr>
			<td colspan="2"><p align="center"> = 회원  정보수정 = </p></td>
		</tr>
		<tr>
			<td align="center">아이디</td>
			<td><input type="text" name="id" id="id" readonly value="<%=user.get("id") %>"></td>
		</tr>
		<tr>
			<td align="center">비밀번호</td>
			<td><input type="password" name="pwd" id="pwd" maxlength="100"/></td>
		</tr>
		<tr>
			<td align="center">이름</td>
			<td><input type="text" name="name" id="name" maxlength="100"/></td>
		<tr>
		<tr>	<td align="center">취미</td>
			<td>
				잠자기<input type="checkbox" name="hobby" value="잠자기">
				게임<input type="checkbox" name="hobby"value="게임">
				독서<input type="checkbox" name="hobby"value="독서">
				음악<input type="checkbox" name="hobby"value="음악">
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="회원정보수정" /></td>
		</tr> 
	</table>
<input type="hidden" name="command" id="command" value="update"/><br/>
<input type="hidden" name="user_no	" value="<%=user.get("user_no")%>">
</form>
</body>
</html>