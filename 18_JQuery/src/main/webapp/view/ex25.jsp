<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	* {margin: 0; padding: 0}
	h2{text-align: center;}
	#banner_warp{width: 900px; padding: 20px; margin: 0 auto; border: 1px solid gray;}
	#frame{width: 900px; overflow: hidden; position: relative; margin: 10px auto;}
	#banner{width: 50000000000px;}
	#footer{text-align: center;}
	img{border: none; vertical-align: top;}
	li img {width: 300px;}
	ul li{list-style: none; float: left; width: 300px;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
   $(function() {
	 	var list = $("#banner");
	 	var show_num = 3 ; 						// 화면에 노출 되는 그림의 수
	 	var num = 0 ;      						// 이동시 증감되는 변수
	 	var total = $("li").length;  			// li의 갯수
	 	var li_width = $("li:first").width(); 	// li 하나의 너비
	 	
	 	// li 태그 중 인덱스 값이 3보다 작아지면 li 태그 복사 하여 붙여 넣자 
	 	var c_Obj = $("li:lt("+show_num+")").clone();
	 	list.append(c_Obj);
	 	
	 	setInterval(() => {
			if(num == total){
				num = 0 ;
				list.css("margin-left", num);
			}
			num++;
			list.stop().animate({marginLeft : -li_width*num+"px"},1000);
			return false;
		},3000);
	 	
	 	$("#prev").on("click",function(){
	 		if(num == 0){
				num = total ;
				list.css("margin-left", -li_width*num+"px");
			}
			num--;
			list.stop().animate({marginLeft : -li_width*num+"px"},1000);
			return false;
	 		
	 	});
	 	$("#next").on("click",function(){
	 		if(num == total){
				num = 0 ;
				list.css("margin-left", num);
			}
			num++;
			list.stop().animate({marginLeft : -li_width*num+"px"},1000);
			return false;
	 		
	 	});
   });
</script>
<script type="text/javascript"></script>
</head>
<body>
	<h2>롤링 슬라이드 배너 만들기</h2>
	<br><br><br>
	<div id="banner_warp">
		<div id="frame">
			<ul id="banner">
				<li><a href="#"><img src="../images/pic_1.jpg"></a></li>
				<li><a href="#"><img src="../images/pic_2.jpg"></a></li>
				<li><a href="#"><img src="../images/pic_3.jpg"></a></li>
				<li><a href="#"><img src="../images/pic_4.jpg"></a></li>
				<li><a href="#"><img src="../images/pic_5.jpg"></a></li>
			</ul>
		</div>
		<p id="footer">
			<a href="#" id="prev"><img src="../images/prev_btn.png"></a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="#" id="next"><img src="../images/next_btn.png"></a>
		</p>
	</div>
</body>
</html>