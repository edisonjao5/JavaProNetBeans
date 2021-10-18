/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function validacion(datos) {
    var nombre = document.getElementById("nombre").value;
    var apellido = document.getElementById("apellido").value;
    var email = document.getElementById("email").value;
    var telefono = document.getElementById("telefono").value;
    var fecha = document.getElementById("fecha").value;
    var lugar = document.getElementById("lugar").value;
    var evento = document.getElementById("evento").value;
    var confirmar = confirm("Reserva Exitosamente tomada por " + nombre + " " + apellido + " con correo electronico " + email + " y numero de telefono " + telefono + " para el Dia " + fecha + " en el Lugar de " + lugar + " para el Evento de " + evento);
    if(confirmar){
        alert("Gracias Por Tu Reserva");
    } else{
        alert("No Te Arrepientas de un Excelente Servicio");
    }
}

//jdbc:mysql://localhost:3306/Eventos&Co?zeroDateTimeBehavior=CONVERT_TO_NULL