<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#box{
		background-color: tomato;
		width: 0px;
		height: 50px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
   $(function() {
	   $("#btn").click(function() {
		$("#box").animate(
				{width:"400px"},
				{duration:8000, 
				step:function(x1){
					$("#demo").text(Math.round(x1 * 100/400)+"%");
				}
			});
	});
   });
</script>
<script type="text/javascript"></script>
</head>
<body>
	<p><button id="btn">start</button> </p>
	<div style="border: 1px solid red; margin: 10px; width: 400px;">
		<div id="box"></div>
	</div>
	<p id="demo"></p>
</body>
</html>



