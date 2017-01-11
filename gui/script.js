$("div.tile").mouseenter(function() {
	$(this).addClass("tileMouseOver");
}).mouseleave(function() {
	$(this).removeClass("tileMouseOver");
}).mousedown(function() {
	$(this).addClass("tileMouseDown");
}).mouseup(function() {
	$(this).removeClass("tileMouseDown");
	
	var id = $(this).attr('id');
	var url = "";
	
    
    
	if(id == "tile1") {
		url = "fuetterung.php";
	} else if(id == "tile2") {
		url = "tierverwaltung.php";
	} else if(id == "tile3") {
		url = "neuesfutter.php";		
	} else if(id == "tile4") {
		url = "futterbestellung.php";		
	} else if(id == "tile5") {
		url = "pflegerzuweisung.php";		
	} else if(id == "tile6") {
		url = "futterart.php";		
	}
	
	if(url != "") {
		$.ajax({
			url: url,
			success: function(result) {
				$("#content").html(result);
			}
		});
	}
    
    alert("fertig");
});