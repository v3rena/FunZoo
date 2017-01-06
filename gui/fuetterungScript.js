$("#InsertAnimal").click(function() {
		$.ajax({
			url: "Stored Procedures/InsertAnimal.php",
			success: function(result) {
				$("#content").html(result);
			}
		});
});