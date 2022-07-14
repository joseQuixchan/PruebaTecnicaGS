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
            "id_cuenta": $("#id").val(),
            "numero_cuenta": $("#numero_cuenta").val(),
            "descripcion": $("#descripcion").val(),
            "fecha_ingreso": $("#fecha").val(),
        }),
      };
    
}

