// definición de constantes
const btnRedireccion1 = document.getElementById("compraTickets1");
const btnRedireccion2 = document.getElementById("compraTickets2");
const btnEnvio = document.getElementById("envioForm");

// funciones
function redireccionamiento(){
    window.location = "./pages/compraTickets.html";
};
function envioFormulario(){
    if ( //todas las condiciones se cumplen
    (!document.getElementById("nombre").value == "") &&
    (!document.getElementById("apellido").value == "") &&
    (!document.getElementById("charla").value == "")
    ) {
        alert("¡Gracias por tu ofrecimiento!\nSin duda te tendremos en cuenta para nuestra próxima conferencia");
    }
    else {
        alert("Por favor, complete todos los campos");
    }
};

// eventos en botones
btnRedireccion1.addEventListener("click", redireccionamiento);
btnRedireccion2.addEventListener("click", redireccionamiento);
btnEnvio.addEventListener("click", envioFormulario);