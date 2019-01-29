    <section>
        <div class="jumbotronPanelAdmin align-items-center">
            <div class="gradient"></div>
            <div class="container content">
                <div class='row'>
                    <div class='col-lg-12 col-xs-12' style='color:yellow;'>
                      <h3> Registros de usuario </h3>
                      <p style='margin-bottom:3px;'> Listado de todos los administradores registrados hasta la ultima fecha : </p>
                    </div>
                <div class='row'>
                    <div class='col-lg-12 col-xs-12' style='color:yellow;'>

                            <?php
                                $infoTabla="";
                                include_once("../../conexion/db_conexion_clases.php");

                                $result = mysqli_query($conectador, "select * from usuario_administrador order by id_usuario_administrador desc"); 
                                //Cargando datos de la BD a una variable matriz
                                for ($n=0; $fila=mysqli_fetch_array($result) ; $n++) { 
                                    $infoTabla[$n]=$fila;
                                }
                                if($infoTabla!=""){
                                    echo'<table class="table table-bordered table-hover text-center" id="tablaAdministradores" style="background:white; border-radius:  ; padding:0px; margin:0px; color:#6E6E6E; margin-bottom: 2%; text-center;">
                                                    <thead>
                                                            <tr style="background: #D4AC0D; padding:0px; margin:0px; color:black;">
                                                                <th class="text-center" style="text-align:center; color:white; text-shadow:1px 1px 1px #585858;">Correo</th>
                                                                <th class="text-center" style="text-align:center; color:white; text-shadow:1px 1px 1px #585858;">Contraseña</th>
                                                                <th class="text-center" style="text-align:center; color:white; text-shadow:1px 1px 1px #585858;">Cargo</th>
                                                                <th class="text-center" style="text-align:center; color:white; text-shadow:1px 1px 1px #585858;">Alias</th>
                                                                <th class="text-center" style="text-align:center; color:white; text-shadow:1px 1px 1px #585858;">Modificar</th>
                                                            </tr>
                                                    </thead>
                                            <tbody style="background:#f9def9; padding:0px; margin:0px; color:black;">';

for ($c=0; $c <sizeof($infoTabla) ; $c++) { 
    echo "<tr><td>".$infoTabla[$c][1]."</td><td>".$infoTabla[$c][2]."</td><td>".$infoTabla[$c][3]."</td><td>".$infoTabla[$c][4]."</td>";
echo '<td><a onclick="abrirModalModAdministrador('."'".$infoTabla[$c][0]."'".')" class="btn btn-danger btn-sm" style="border-radius: 5px; font-size: 12px; font-weight: bold; background: #28B463; border: 1px solid #28B463;">Modificar</a></td>';
}

                                            
                                    echo'   </tbody>
                                         </table>';
                                }else {echo '<h3 style='."'".'font-family:"Cooper Black"'."'".'>Vaya, parece que no hay ningún administrador registrado!</h3>';}
                            ?>
                    </div>                   
                </div>
            </div>

        </div>
    </section>

<script>
    $(document).ready(function() {
        $('#tablaAdministradores').DataTable({
            "aaSorting": [[ 0, "desc" ]],
            responsive: true,
            "lengthMenu": [[7,10, 25, 50, -1], [7,10, 25, 50, "All"]]
        });
    });
    </script>