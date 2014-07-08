function updateCountdown() {
	// 140 is the max message length
	var remaining = 140 - $('#micropost_content').val().length;
	$('#countdown').text(remaining + ' characters remaining');
}

$(document).ready(function() {
	tarea_sniffer = setInterval(function() {
		updateCountdown()
	}, 50);
});