<?php 
//session_start();
//error_reporting(0);
?>
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
        <!--container-->
    </header>

    <!-- Begin Navbar -->
    <nav>

        <div class="container">
            <ul class="nav navbar-nav">
              <li>
                <a href="#" data-toggle="tooltip" data-placement="bottom" onclick="mostrar_seccion_administradores()">
                  <div class="text-center"  style='color:black;'>
                    <div class="menu-item">
                      <p>Perfil</p>
                    </div>
                  </div>
                </a>
              </li>


             <li>
                <a href="#" data-toggle="tooltip" data-placement="bottom" onclick="mostrar_seccion_clientes()">
                  <div class="text-center"  style='color:black;'>
                    <div class="menu-item">
                      <p>Cliente</p>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="#" data-toggle="tooltip" data-placement="bottom" onclick="btn_empresa()">
                  <div class="text-center"  style='color:black;'>
                    <div class="menu-item">

                      <p>Empresa</p>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="#" data-toggle="tooltip" data-placement="bottom" onclick="btn_factura()">
                  <div class="text-center" style='color:black;'>
                    <div class="menu-item">

                      <p>Recibo</p>
                    </div>
                  </div>
                </a>
              </li>              
              <li>
                <a href="#" data-toggle="tooltip" data-placement="bottom" onclick="btn_reporte()">
                  <div class="text-center" style='color:black;'>
                    <div class="menu-item">

                      <p>Reporte</p>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="#" data-toggle="tooltip" data-placement="bottom" onclick="btn_servicio()">
                  <div class="text-center" style='color:black;'>
                    <div class="menu-item">

                      <p>Servicio</p>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="#" data-toggle="tooltip" data-placement="bottom" onclick="btn_chofer()">
                  <div class="text-center" style='color:black;'>
                    <div class="menu-item">

                      <p>Chofer</p>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="#" data-toggle="tooltip" data-placement="bottom" onclick="btn_taxi()">
                  <div class="text-center" style='color:black;'>
                    <div class="menu-item">

                      <p>Taxi</p>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="#" data-toggle="tooltip" data-placement="bottom" onclick="btn_tipo()">
                  <div class="text-center" style='color:black;'>
                    <div class="menu-item">

                      <p>Tipo</p>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="#" data-toggle="tooltip" data-placement="bottom" href='vista_salir.php'>
                  <div class="text-center" style='color:black;'>
                    <div class="menu-item">

                      <p>Salir</p>
                    </div>
                  </div>
                </a>
              </li>
            </ul>
          </div>

    </nav>

    <div id="panel_contenedor_principal">
    <?php
    if($_GET['seccion']==0){   include("inicio/vista_home_administrador.php");}
    if ($_GET['seccion']==1) {   include("vista/modelo_compras.php");}  
    if ($_GET['seccion']==2) {   include("vista/modelo_ventas.php");}
    ?>
    </div>

  <div id="panel_contenedor_modals">
    
  </div>

<div class="modal" id="miModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Modal body text goes here.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary">Save changes</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<?php
include('vista_footer.php')
?>