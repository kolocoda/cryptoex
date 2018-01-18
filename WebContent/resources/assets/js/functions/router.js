

$(document).ready(function() {
	var bodyUrl = $("#body-url").val();
	var bodyDiv = "#body-main";
	var append = false;
	
	if (bodyUrl == ""){
	//do nothing;
	}
	else{
		
		loadPartialHtmlIntoDiv(bodyUrl, append);
	}
});

function loadPartialHtmlIntoDiv(bodyUrl, append){
	$.ajax({
		url: bodyUrl,
		type: "Get",
		beforeSend: function() {
	        // setting a timeout
	        //$(bodyDiv).addClass('loading');
	    },
	    success: function(data) {
	    	
	        if (append) {
	            $(bodyDiv).append(data);
	        } else {
	        	console.log("Loading User data");
	            $(bodyDiv).html(data);
	        }
	    },
	    error: function(xhr) { // if error occurred
	        iziToast.error({
	    		    title: 'Error',
	    		    message: 'Unable to complete',
	    		    position: 'topRight',
	    		});
	        console.log(xhr.statusText + xhr.responseText);
	     //   $(bodyDiv).removeClass('loading');
	    },
	    complete: function() {
	     //   $(bodyDiv).removeClass('loading');
	    },
	    dataType: 'html'
	
	});
}

