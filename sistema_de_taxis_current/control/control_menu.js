function mostrar_seccion_administradores() {
   $.ajax({
      data: "",
      url: '../vista/administrador/vista_administradores.php',
      type: 'post',
      beforeSend: function() {
         $("#panel_contenedor_principal").html("Procesando, espere por favor...");
      },
      success: function(response) {
         $("#panel_contenedor_principal").html(response);
      }
   });
}