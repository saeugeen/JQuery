<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트</title>
<style type="text/css"></style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	// 마우스 이벤트 : click(=on, =bind), dblclick, hover, mouseup, mousedown
	//                  mouseover(mouseenter), mouseout(mouseleave)
	// 키보드 이벤트 : keypress, keydown, keyup
	
	// form 이벤트 : blur, change, focus, select, submit;
   $(function() {
	 	// $("#p1").click(function() { alert("클릭 성공");	});
	 	// $("#p1").on("click",function() { alert("on 클릭 성공");	});
	 	// $("#p1").bind("click",function() { alert("bind 클릭 성공");	});
	 	
	   // $("#p1").dblclick(function() { alert("더블클릭 성공");	});
	   
	   // $("#p1").mouseover(function() { alert("mouseover")});
	   // $("#p1").mouseout(function() { alert("mouseout")});
	   // $("#p1").mouseenter(function() { alert("mouseenter")});
	   // $("#p1").mouseleave(function() { alert("mouseleave")});
	   
	   // $("#p1").mouseup(function() { alert("mouseup")});
	   // $("#p1").mousedown(function() { alert("mousedown")});
	   
	   // .css() => 스타일 지정, attr("속성","값")=> 속성지정
	   // $(this) => 마우스오버한 객체 자기 자신
	   $("#img").mouseover(function() { $(this).attr("src","../images/pic_bulbon.gif");  });
	   $("#img").mouseout(function() {$(this).attr("src","../images/pic_bulboff.gif");  });
	   
	   $("#id").keyup(function() {
		   //val() => 값 (value)
		  var k = $(this).val();
		   if(k.length>=4){
			   alert(k);
		   }
	   });
	   
	   $("#chk").change(function() {
		  // .is(":checked") => 체크된 상태면 true, 아니면  false
		  //  변수 = $(this).val();  // getter
		  // $("선택자").val("값");  // setter     
		  if($(this).is(":checked")){
			  var str = $("#id").val();
			  $("#id_chk").val(str);
		  }else{
			  $("#id_chk").val(""); 
		  }
	    });
	   
	   $(":radio").change(function() {
		   if($(this).is(":checked")){
			   var msg = $(":checked").val();
			   $("#result").val(msg);
		   }
	   });
	   $("#pwd_chk").keyup(function() {
		  if($("#pwd").val() == $("#pwd_chk").val()){
			  $("#s1").html("<b>암호가 맞네요</b>");
		  }else{
			  $("#s1").html("<b>암호가 틀리네요</b>");
		  }
	   });
	   $("select").change(function() {
		   var k2 ="";
		   // 복수일때 반복문 사용 가능 (.each(function(){반복내용});)
		   // 반복문에서 this는 해당 횟차에 해당 되는 객체를 말한다.
		   $("select option:selected").each(function() {
			   k2 += $(this).text() + "  ";
		   });
		   $("div").text(k2);
	   });
   });
</script>
<script type="text/javascript"></script>
</head>
<body>
	<p><span id="p1">이벤트 처리</span></p>
	<p><img id="img" src="../images/pic_bulboff.gif"></p>
	<hr>
	<p><input type="text" name="id" id="id" > </p>
	<p><input type="checkbox" name="chk" id="chk">상동 </p>
	<p><input type="text" name="id_chk" id="id_chk"> </p>
	
	<hr>
	<p> <input type="radio" name="fruit" value="orange">오렌지
	    <input type="radio" name="fruit" value="apple">사과
	    <input type="radio" name="fruit" value="banana">바나나
	    <input type="text" name="result" id="result">
	</p>
	<hr>
	<p><input type="password" name="pwd" id="pwd"> </p>
	<p><input type="password" name="pwd_chk" id="pwd_chk"> <span id="s1"></span> </p>
	<hr>
	<select name="sweets" multiple size="5">
		<option>chocolate</option>
		<option selected>candy</option>
		<option>taffy</option>
		<option>caramel</option>
		<option>fudge</option>
	</select>
	<hr>
	<div></div>
</body>
</html>








