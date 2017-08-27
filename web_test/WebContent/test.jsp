<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="/js/jquery-3.2.1.min.js"></script>   <!-- jquery 구현하기 -->
<!-- <script src=/js/test.js (1)></script>    (예시)js  file을 바라보도록하면 뭐든 쓸수있다 -->
<script>
//아래 fuction test()대신구현 (코딩짧아짐)
$(document).ready(function(){
	$("#btn").click(function(){
		var name= $("#name").val();
		var age= $("#age").val();
		var result= "이름:" + name;
		result +="나이:"+ age;
		$("#result_div").html(result);
	})
})
/* fuction test(){            //자바스크립트는 function기반이므로 여기서 test는 변수이다
	alert($("#name".val()));   //$()안에있는건 jquery사용!, 안에 #이들어가면 name을 바라본다,val()은 value라는 함수를 뜻함
	/* var nameObj=document.getElementById("name"); 
	alert("wlecom to test.jsp");  */
	/* var name= $("#name").val();
	var age= $("#age").val();
	var result= "이름:".name;
	result +="나이:"+ age;
	$("#result_div").html(result);
}
*/
</script>
<body>
이름:<input type="text" name="name" id="name"><br>
나이:<input type="text" name="age" id="age"><br>
<div id ="result_div"></div> 
<!-- <input type="button" value="클릭해봐" onclick="test()">     클릭누를시 test가 실행됨 -->
<input type="button" value="클릭해봐" id="btn">   <!-- 클릭누를시 test가 실행됨 -->
</body>



<script>
//var nameObj=document.getElementById("name");  //data type은 var한가지밖에 없다, id가 name인것을 찾음,nameObj는 자바에서 생성자 호출한것처럼<input type="text" name="nameInput" id="name">를 다 가지고 있음		
/*window.alert("wlecom to test.jsp");  윈도우 창에서동작하는 애이므로 window생략해도 가능하다.
alert("wlecom to test.jsp"); */
</script>
</html>