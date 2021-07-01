<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>특정영역에 문자열 추출(get)/삽입(set)</title>
<style type="text/css"></style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
   $(function() {
	 	// text() : 텍스트 글자 내용 삽입 및 추출
	 	// html() : 텍스트 및 태그 내용 삽입 및 추출
	 	// var()  : input type의 value 값 삽입 및 추출
	 	// attr() : 태그 속성 삽입 및 추출
	 	$("#btn1").click(function(){
	 		alert($("#test").text());                  // get
	 		$("#test").text("<h2>Hello jQuery</h2>");  // set
	 	});
	 	$("#btn2").click(function(){
	 		alert($("#test").html());                  // get
	 		$("#test").html("<h2>Hello jQuery</h2>");  // set
	 	});
	 	$("#btn3").click(function(){
	 		alert($("#pw").val());                     // get
	 		$("#pw").val("hong!78")                    // set
	 	});
	 	$("#btn4").click(function(){                  
	 		alert($("#w3").attr("href"));              // get
	 		$("#w3").text("네이버")
	 		.attr("href","https://www.naver.com");     // set 
	 	});       
   });
</script>
<script type="text/javascript"></script>
</head>
<body>
	<p id="test">This is some <b>bold</b>text in a Paragraph.  </p>
	<p><input type="password" id="pw" placeholder="비번입력"></inut> </p>
	<p><a href="https://www.w3schools.com" id="w3">W3Schools</a> </p>
	<hr>
	<button id="btn1">Show text</button>
	<button id="btn2">Show html</button>
	<button id="btn3">Show val</button>
	<button id="btn4">Show attr</button>
	
	<hr>
	<div id="result"></div>
	
</body>
</html>