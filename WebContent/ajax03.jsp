<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="/favicon.ico" />
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(function() { // $(document).ready()
		$('#btnText').click(function() {
			$.get('msg.txt')
				.done(function(data) { // 다 받아 왔을 때의 동작
					// $('#rcvMsg').html(data);
					alert(data);
				});
		});
		$('#btnJsp').click(function() {
			$.post('iam.jsp', {name:$('#name').val()}) // name data를 iam.jsp에 전달해 주고, 다시 받아와서 alert 띄우네!!
				.done(function(data) {
					alert(data);
				});
		});
	});
</script>
</head>
<body>

	<input type="button" id="btnText" value="get text" />
	<hr/>
	<input type="text" id="name" />
	<input type="button" id="btnJsp" value="get jsp" />
	<div id="rcvMsg"></div>

</body>
</html>