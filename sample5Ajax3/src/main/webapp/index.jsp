<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>

<div id="demo"></div>
<br/><br/>
<button type="button">click</button>

<script type="text/javascript">
$("button").click(function () {
	
	$.ajax({
		url:"hello",
		type:"get",
		data:{ id:"abc", pw:"123" },
		success:function(data){
			//alert('success');
			//alert(JSON.stringify(data));
			
			// 1.
			//alert(data.message);
			
			// 2.
			//let human = data.human;
			//alert(human.name);
			
			// 3.
			//let list = data.list;
			//alert(list[1].name);
			
			// 4.
			let message = data.map.message;
			let list = data.map.list;
			alert(message);
			alert(list);
			
		},
		error:function(){
			alert('error');
		}		
	})
	
});
</script>

</body>
</html>









