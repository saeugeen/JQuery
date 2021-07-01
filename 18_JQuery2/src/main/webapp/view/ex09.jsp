<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>효과</title>
<style type="text/css"></style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
   $(function() {
	 	// .fadeIn(), .fadeIn(speed), .fadeOut(), .fadeOut(speed), fadeToggle(), fadeToggle(speed)
	 	// .fadeTo(), .fadeTo(speed, opacity(불투명도(0.0~1.0)))
	 	// speed : 숫자지정(default=>400), 문자지정("slow" || "fast")
	 	$("#btn1").click(function () {
			$("#img").fadeOut(2000);
		});
	 	$("#btn2").click(function () {
	 		$("#img").fadeIn(2000);
		});
	 	var i = 0 ;
	 	$("#btn3").click(function () {
			$("#img").fadeToggle(2000);
		});
	 	
	 	$("#btn4").click(function () {
			$("#img").fadeTo(400,0.0);
		});
	 	$("#btn5").click(function () {
			$("#img").fadeTo(400,1.0);
		});
   });
</script>
<script type="text/javascript"></script>
</head>
<body>
	<button id="btn1">감추기 효과</button>
	<button id="btn2">보이기 효과</button>
	<button id="btn3">감추기/보이기(toggle) 효과</button>
	<button id="btn4">fadeTo감추기 효과</button>
	<button id="btn5">fadeTo보이기 효과</button>
	<hr>
	<img id="img" src="../images/pic_bulbon.gif" style="border: 1px solid red">
	<h2>Hello World</h2>
</body>
</html>