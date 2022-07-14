var UrlApi = "https://localhost:44304/api/Cuenta";

function AgregarCuenta(){
    var settings = {
        "url": UrlApi,
        "method": "POST",  
        "timeout": 0,
        "headers": {
          "Content-Type": "application/json"
        },
        "data": JSON.stringify({
            "id": $("#id_cuenta").val(),
            "numero_cuenta": $("#numero_cuenta").val(),
            "Descripcion": $("#descripcion").val(),
            "TxtEmail": $("#fecha_ingreso").val(),
        }),
      };
      
      $.ajax(settings).done(function (response) {
        //console.log(response); 
        alert("Agregado Correctametne")
      });
}

