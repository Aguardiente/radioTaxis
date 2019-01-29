$(document).ready(function(){
	/* handling form validation */
	$("#login-form").validate({
		rules: {
			password: {
				required: true,
			},
			username: {
				required: true,
			},
		},
		messages: {
			password:{
			  required: "Ingresa tu contraseña"
			 },
			username: "Ingresa tu correo",
		},
		submitHandler: submitForm	
	});	

	/* Handling login functionality */
	function submitForm() {		
		var data = $("#login-form").serialize();
		$.ajax({				
			type : 'POST',
			url  : '../modelo/response.php?action=login',
			data : data,
			beforeSend: function(){	
				$("#error").fadeOut();
				$("#login_button").html('<span class="glyphicon glyphicon-transfer"></span> &nbsp; enviando ...');
			},
			success : function(response){			
				if($.trim(response) === "1"){
					console.log('dddd');									
					$("#login-submit").html('Ingresando ...');
					setTimeout(' window.location.href = "../vista/vista_panel_principal.php?seccion=0"; ',2000);
				} else {									
					$("#error").fadeIn(1000, function(){						
						$("#error").html(response).show();
					});
				}
			}
		});
		return false;
	}

	/* Handling login functionality */
	function logout() {
		console.log('fdfdf');
		$.ajax({				
			type : 'POST',
			url  : '../modelo/response.php?action=logout',
			data : data,
			success : function(response){
				window.location.href = "../vista/vista_login.php";
			}
		});
		return false;
	}   
});