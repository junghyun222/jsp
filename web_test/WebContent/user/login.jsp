<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="/js/jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function(){
	$("input[type='button']").click(function(){
		var value = this.value;
		if(value=="회원탈퇴"){
			$("#command").val("delete");
		}else if(value==" 회원정보수정"){
			location.hrdf="/user/updte.jsp";
			return;
		}else if(value=="회원리스트"){
			location.href="/user/list.jsp";
			return;
		}
		this.form.submit();
	})
})
</script>
<body>
<%
//String id = ""; //id 대신 user사용하겠다
Map<String, String> user= null;
if(session!=null && session.getAttribute("user")!=null){
	user = (Map<String,String>)session.getAttribute("user");
}
if(user==null){
%>
<form action="login.user" method="post">
아이디 : <input type="text" name="id" id="id"><br>
비밀번호 : <input type="password" name="pwd" id="pwd"><br>
<input type="hidden" name="command" id="command" value="login"/>
<input type="submit" value="로그인">
</form>
<%
}else{
	//아래 네줄대신 user.get으로 바꿔줄수있다.
	String id = user.get("id");
	String user_no = user.get("user_no");
	String name = user.get("name");
	String hobby = user.get("hobby");
	 String result=user_no +"번째로 가입한 "+name+"님반갑습니다<br>";
	 result+=name+"님의 id는"+ id+ "입니다 취미는 아래와같습니다<br>";
	 result+="취미:"+hobby;
	 out.println(result);
		
	/*  String id=(String)session.getAttribute("id"); // 세션은 서버에서 타임아웃하거나 사용자 로그아웃전까지는 정보를 가지고 있음
	 String userNo=(String)session.getAttribute("userNo");
	 String name=(String)session.getAttribute("name");
	 String hobby=(String)session.getAttribute("hobby"); */
%>
<form action="some.user" method="post">
<input type="button" value="로그아웃">
<input type="button" value="회원탈퇴">
<input type="button" value="회원정보수정">
<input type="hidden" name="command" id="command" value="logout">
<input type="hidden" name="user_no" value="<%=user_no%>">
</form>
<%
}
%>
</body>
</html>