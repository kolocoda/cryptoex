
     $(document).ready(function() {
    	 $("#submitButton").click(function (event) { 
 			    var $userName=$('#login_username').val();
 			    var $password=$('#login_password').val();
 			    if($password =="" || $userName ==""){
 			    	iziToast.warning({
 			    	    title: 'Caution',
 			    	    message: 'You forgot important data',
 			    	});
 			    }
 			    $.ajax({
 					      url: "user/process-login",
 					      type: "Post",
 					      data: { userName:$userName,password:$password},
 					    // dataType: "json",
 					      success : function(data){
 					     if(data=="true"){ 
 					    	
						    	 $.ajax({
	    					      url: "authenticate",
	    					      type: "Post",
	    					      data: { username:$userName,password:$password},
	    					    // dataType: "json",
	    					      success : function(data){
		 					    	  if(data==1){ 
		 					    		 iziToast.success({
		 					    		    title: 'OK',
		 					    		    message: 'Login Successful',
		 					    		    position: 'topRight',
		 					    		});
						          		window.location.href= ("user/home");      
		 					    	  }
	    					    	  else{
	    					    		  iziToast.error({
	  	 					    		    title: 'Error',
	  	 					    		    message: 'Username or password not correct',
	  	 					    		});
	    					    	   }
	    					    	 
	    					      }, 
	    					      error: function(data, errorThrown){
	    					    	  iziToast.error({
		 					    		    title: 'Error',
		 					    		    message: 'An error has occured',
		 					    		});
	    					      }
	    					  }); 
				          		
 					   	}
 					    else{ alert("error"); }
 					    	 
 					    }, 
 					    error: function(data, errorThrown){
 					    	 alert("error");
 					    }
 					 }); 
 			   
 			    return false; 
			});
		});
     $("#new-account").click(function(){
    	 loadPartialHtmlIntoDiv("user/registration", "#body-main", false);
     });
     $("#login-account").click(function(){
    	 loadPartialHtmlIntoDiv("login", "#body-main", false);
     });