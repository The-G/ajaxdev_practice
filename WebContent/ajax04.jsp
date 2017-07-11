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
		$('#btnClass').click(function(){
			$.getJSON('data.js', function(data){
				console.log(data);
				var items = [];
				$.each(data, function(key, val){
					console.log(key + '****'+ val);					
					items.push(
							'<li id="' + key + '">' +
							val['no'] + ":" +
							val['name'] + ":" + 
							val['say'] + "</li>"
							);
					console.log(items)
				});
				$('#rcvMsg').append(items);
			});
		});
	});
</script>
</head>
<body>

	<input type="button" id="btnClass" value="get" />
	<hr/>
	<ul type="square">
		<div id="rcvMsg"></div>
	</ul>
	
</body>
</html>