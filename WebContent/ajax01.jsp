<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="/favicon.ico" />
<script type="text/javascript">
var xhr = null;
function load(url) {
	console.log(url)
	if (window.ActiveXObject) { // explorer 4~10
		console.log('explorer');
		try {
			xhr = new ActiveXObject('Msxml2.XMLHTTP')
		} catch(e) {			
			xhr = new ActiveXObject('Microsof.XMLHTTP')
		}
	} else if(window.XMLHttpRequest) { // chrome, explorer 11 이후
		console.log('chrome');
		xhr = new XMLHttpRequest();
	} else {
		console.log('ajax 구현 불가능');
	}
	console.log('readyState : ' + xhr.readyState);
	xhr.open('GET', url, true);  // 비동기 방식은 true
	console.log('readyState : ' + xhr.readyState);
	xhr.onreadystatechange = function() { // readyState 변할 때마다 작동함!!
		console.log('readyState : ' + xhr.readyState);
		if (xhr.readyState == 4) {
			if(xhr.status == 200) {
				document.getElementById('rcvMsg').innerHTML = xhr.responseText;
			}
		}		
	}
	xhr.send(null);
}
</script>
</head>
<body>

<input type="button" value="get text" 
onclick="load('msg.txt')" />
<input type="button" value="get jsp" 
onclick="load('msg.jsp')" />
<div id="rcvMsg"></div>


</body>
</html>