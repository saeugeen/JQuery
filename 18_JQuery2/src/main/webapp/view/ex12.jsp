<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>콜백함수</title>
<style type="text/css"></style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
   $(function() {
	 	// 콜백함수 : 함수의 인자를 함수로 사용하는 것
	 	// 콜백기능 : 현재 효과가 100% 완료 되었을때 실행되는 기능
	 	$("#btn1").click(function() {
			$("#img").hide("slow");
			alert("hide 콜백 X");
		});
	 	$("#btn2").click(function() {
			$("#img").hide("slow", function() {
				alert("hide 콜백 O");
			});
		});
   });
</script>
<script type="text/javascript"></script>
</head>
<body>
	<button id="btn1">콜백함수  사용 안함</button>
	<button id="btn2">콜백함수  사용 </button>
	<hr>
	<img id="img" src="../images/pic_bulboff.gif">
	<p>Hello World</p>
</body>
</html>