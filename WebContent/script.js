var classmate = [
	{
		"no" : "1",
		"name" : "김지혁1",
		"say" : "wtfwt"
	},
	{
		"no" : "2",
		"name" : "김지혁2",
		"say" : "tensorflow cnn rnn"
	},
	{
		"no" : "3",
		"name" : "김지혁3",
		"say" : "잠와"
	}

];

var items = [];
$.each(classmate, function(key, val){
	items.push(
			'<li id="' + key + '">' +
			val['no'] + ":" +
			val['name'] + ":" + 
			val['say'] + "</li>"
			);
});
$('#rcvMsg').append(items);