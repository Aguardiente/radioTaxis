<?php
include('vista_header.php');
?>
    <header class="header bg">
        <div class="container text-white">
            <div class="row">
                <div class="col-sm-2 col-0 align-self-center box-1">
		            <img src="../multimedia/imagenes/logo.png" alt="logo">
	            </div>
    	        <div class="col-sm-10 col-12 align-self-center text-right">
        	        <div class="social-icons">
            	        <ul>
                	        <li>email: info@taxicontrol.com</li>
                    	    <li>Teléfono-móvil : 60-365299</li>
                  	    </ul>
                	</div>
            	</div>
	        </div>
            <!--/row-->
        </div>
    </header>


    <section>
        <div class="jumbotron align-items-center">
            <div class="gradient"></div>
            <div class="container content">
				  	<div class="col-sm-6 col-8 align-self-center text-center">
		                <h1>Sistema de Radio Taxis</h1>
		                <h2>Ingrese la cuenta:</h2>
                	<div class="alert alert-danger" role="alert" id="error" style="display: none;">...
				  	</div>

					  <form id="login-form" name="login_form" role="form" style="display: block;" method="post">
						  <div class="form-group">
							<input type="email" name="username" id="username" tabindex="1" class="form-control" placeholder="Usuario" value="admin@gmail.com"  required>
						  </div>
						  <div class="form-group">
							<input type="password" name="password" id="password" tabindex="2" class="form-control" value="admin" placeholder="Contraseña"> 
						  </div>
						  <div class="col-xs-12 form-group pull-right">     
								<button type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-success">
								 <span class="spinner"><i class="icon-spin icon-refresh" id="spinner"></i></span> Ingresar
								</button>
						  </div>
					  </form>
				  	</div>
            </div>

        </div>
    </section>

<?php
include('vista_footer.php')
?>