$("form").submit(function(event) {
	event.preventDefault();
	
	var form = $(this);
	var action = form.attr("action"),
		method = form.attr("method"),
		data = form.serialize();
		
	$.ajax({
		url: action,
		type: method,
		data: data
	}).done(function(data) {
		alert("Data: " + data);
	}).fail(function() {
		alert("Fehler");
	}).always(function() {
	});
});