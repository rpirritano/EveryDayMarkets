$( document ).ready(function() {
	
	var url = "http://localhost:8282";
	
	// GET REQUEST
	$("#getBtn").click(function(event){
		event.preventDefault();
		ajaxGet();
	});
	
	// DO GET
	function ajaxGet(){
		$.ajax({
			type : "GET",
			url : url + "/getitem",
			success: function(result){
					alert(result);
					$('#getResultDiv .list-group li').remove();
					var itemList = "";
					$.each(result, function(i, customer){
						var item = "Item " + i + ": Name=" + item.name + " ,Price=" + item.price + "<br\>";
						$('#getResultDiv .list-group').append('<li><h4 class="list-group-item">'+item+'</h4></li>')
			        });
					console.log("Success: ", result);
				
			},
			error : function(e) {
				$("#getResultDiv").html("<strong>Error</strong>");
				console.log("ERROR: ", e);
			}
		});	
	}
})