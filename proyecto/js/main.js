function valorTickets(){
    let cantidadTickets = document.getElementById("cantidad").value;
    let categoria = document.getElementById("categoria").value;
    let montoTotal = 0;

    if (categoria == "estudiante"){
        montoTotal = (200 - 200 * 0.8) * cantidadTickets;
    }else if(categoria == "trainee"){
        montoTotal = (200 - 200 * 0.5) * cantidadTickets;
    }else if(categoria = "junior"){
        montoTotal = (200 -200 * 0.15) * cantidadTickets;
    }

    document.getElementById("total").innerHTML = `<div class="card-body">Total a pagar: $ ${montoTotal}</div>`;
    
}

function clear(){
    document.getElementById("total").innerHTML = `<div class="card-body">Total a pagar: $ 0</div>`;
    document.getElementById("cantidad").value  = "0";
}


const btnClick = document.getElementById("calculo");
btnClick.addEventListener("click", valorTickets);

const btnClick0 = document.getElementById("borrar");
btnClick0.addEventListener("click", clear);