$( document ).ready(function() {
	
	var url = "http://localhost:8282";
	
	// SUBMIT FORM
    $("#itemPage").submit(function(event) {
		// Prevent the form from submitting via the browser.
		event.preventDefault();
		ajaxPost();
	});
    
    
    function ajaxPost(){
    	
    	// PREPARE FORM DATA
    	var formdata = {
    		name 		: $("#name").val(),
        	price 		: $("#price").val(),
    		description : $("#description").val(),
    		image 		: $("#image").val()
    	}
    	
    	// DO POST
    	$.ajax({
			type : "POST",
			contentType : "application/json",
			url : url + "/postitem",
			data : JSON.stringify(formData),
			dataType : 'json',
			success : function(result) {
				$("#postResultDiv").html("<strong>" + "Post Successfully! Item's Info: Name = " 
							+ result.data.name + "</strong>");
				console.log(result);
			},
			error : function(e) {
				alert("Error!")
				console.log("ERROR: ", e);
			}
		});
    	
    	// Reset FormData after Posting
    	resetData();

    }
    
    function resetData(){
    	$("#name").val("");
    	$("#price").val("");
    	$("#descritpion").val("");
    	$("#image").val("");
    }
})