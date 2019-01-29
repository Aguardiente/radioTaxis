function abrirModalModAdministrador(id_admin) {
   var parametros = {
      "id_admin": id_admin
   };
   $.ajax({
      data: parametros,
      url: '../vista/administrador/modal_mod_administrador.php',
      type: 'post',
      beforeSend: function() {
         //alert();
         $("#panel_contenedor_modals").html("Procesando, espere por favor...");
      },
      success: function(response) {
         $("#panel_contenedor_modals").html(response);
         $("#miModal").modal();
      }
   });
}