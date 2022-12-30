<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <title>Conf Bs As</title>
</head>

<body>
    <!-- BARRA DE NAVEGACION -->
    <nav class="navbar navbar-expand-lg navbar-dark px-5" style="background-color: #454647;">
        <!-- LOGO PRINCIPAL -->
        <a id="paginaPrincipal2" class="navbar-brand px-4" href="#">
            <img src="https://github.com/FranMMen/trabajoIntegradorCaC/blob/master/images/codoacodo.png?raw=true"
                alt="logo Codo a Codo" width="100">
            Conf Bs As
        </a>
        <!-- BOTONES DE NAVEGACION -->
        <div class="collapse navbar-collapse px-4">
            <ul class="navbar-nav ms-auto active">
                <li class="nav-item">
                    <a id="paginaPrincipal1" class="nav-link text-white" href="#">La conferencia</a>
                </li>
                <li class="nav-item">
                    <a id="principalOradores" class="nav-link" href="#">Los oradores</a>
                </li>
                <li class="nav-item">
                    <a id="principalLugarFecha"class="nav-link" href="#">El lugar y la fecha</a>
                </li>
                <li class="nav-item">
                    <a id="principalSerOrador" class="nav-link" href="#">Conviértete en orador</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-success" href="#">Comprar tickets</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- PROMOCIONES -->
    <div class="container-fluid text-center my-3">
        <div class="row mx-5">
            <p class="fs-2 h6 my-3" id="oradores">
                PROMOCIONES VIGENTES
            </p>
            <!-- CARD 1 (ESTUDIANTE) -->
            <div class="card mx-auto" style="width: 30%; border-color: blue;">
                <div class="card-body mt-2">
                    <h5 class="card-title">ESTUDIANTE</h5>
                    <p class="card-text">Tiene un descuento del</p>
                    <h5 class="card-title fw-bold fs-3">80%</h5>
                    <p class="card-text text-muted">*presentar documentación correspondiente</p>
                </div>
            </div>
            <!-- CARD 2 (TRAINEE) -->
            <div class="card mx-auto" style="width: 30%; border-color: green;">
                <div class="card-body mt-2">
                    <h5 class="card-title">TRAINEE</h5>
                    <p class="card-text">Tiene un descuento del</p>
                    <h5 class="card-title fw-bold fs-3">50%</h5>
                    <p class="card-text text-muted">*presentar documentación correspondiente</p>
                </div>
            </div>
            <!-- CARD 3 (JUNIOR) -->
            <div class="card mx-auto" style="width: 30%; border-color: orange;">
                <div class="card-body mt-2">
                    <h5 class="card-title">JUNIOR</h5>
                    <p class="card-text">Tiene un descuento del</p>
                    <h5 class="card-title fw-bold fs-3">15%</h5>
                    <p class="card-text text-muted">*presentar documentación correspondiente</p>
                </div>
            </div>

        </div>
    </div>

    <!-- VENTA DE TICKETS -->
    <div class="text-center mt-5" id="formulario">
        <p class="fs-2 h6" id="oradores">
            REVISE LOS DATOS INGRESADOS Y CONFIRME SU COMPRA
        </p>
    </div>
    <form action="update.jsp"> <!-- definimos el archivo donde se guardarán los datos cargados al formulario -->
        <div class="form-group mx-5 mb-2">
            <div class="row mb-3">
                <!-- NOMBRE -->
                <div class="col-6">
                    <input id="nombre" type="text" name="nombre" value="<%= request.getParameter("nombre") %>" 
                    class="form-control" placeholder="Nombre" aria-required="true" required>
                </div>
                <!-- APELLIDO -->
                <div class="col-6">
                    <input id="apellido" type="text" name="apellido" value="<%= request.getParameter("apellido") %>" 
                    class="form-control" placeholder="Apellido" aria-required="true" required>
                </div>
                <!-- MAIL -->
                <div class="col-12 my-3">
                    <input id="email" type="email" name="mail" value="<%= request.getParameter("mail") %>" 
                    class="form-control" placeholder="Mail" aria-required="true" required>
                </div>
                <!-- CANTIDAD DE TICKETS -->
                <div class="col-6">
                    <label class="form-label">Cantidad</label>
                    <input id="cantTickets" type="number" name="cantidad"  value="<%= request.getParameter("cantidad") %>" 
                    class="form-control col-12" aria-required="true" required>
                </div>
                <!-- CATEGORIA DE DESCUENTO -->
                <div class="col-6">
                    <label class="form-label">Categoría</label>
                    <div class="input-group mb-3">
                        	<select id="descuentoAplicado" class="form-select" name="categoria" value="<%= request.getParameter("categoria") %>">
	                            <option value="Sin descuento">Sin descuento</option>
	                            <option value="Estudiante">Estudiante</option>
	                            <option value="Trainee">Trainee</option>
	                            <option value="Junior">Junior</option>
                       		</select>
                    </div>
                </div>
                <!-- BOTONES DE FORULARIO -->
                <div class="col-4">
                    <button id ="reinicio" class="btn btn-danger mt-3 mb-2 col-12" 
                    type="reset" onclick="location.href='delete.jsp'">
                        Eliminar compra
                    </button>
                </div>
                <div class="col-4">
                    <button id="modificacion" class="btn btn-primary mt-3 mb-2 col-12"
                        type="submit" onclick="location.href='update.jsp'">
                        Modificar
                    </button>
                </div>
                <div class="col-4">
                    <button id="confirmacion" class="btn btn-success mt-3 mb-2 col-12" 
                    type="submit" onclick="location.href='compraTickets.html'">
                        Confirmar compra
                    </button>
                </div>
            </div>
        </div>
    </form>

    <!-- NAVBAR FOOTER -->
    <nav class="navbar navbar-expand-lg navbar-dark ps-5" style="background-color: #454647;">
        <div class="collapse navbar-collapse px-4">
            <ul class="navbar-nav active">
                <li class="nav-item pe-5 ps-auto">
                    <a class="nav-link" href="#">Preguntas frecuentes</a>
                </li>
                <li class="nav-item pe-5 ps-auto">
                    <a class="nav-link" href="#">Contáctanos</a>
                </li>
                <li class="nav-item pe-5 ps-auto">
                    <a class="nav-link" href="#">Prensa</a>
                </li>
                <li class="nav-item pe-5 ps-auto">
                    <a class="nav-link" href="#">Conferencias</a>
                </li>
                <li class="nav-item pe-5 ps-auto">
                    <a class="nav-link" href="#">Términos y condiciones</a>
                </li>
                <li class="nav-item pe-5 ps-auto">
                    <a class="nav-link" href="#">Privacidad</a>
                </li>
                <li class="nav-item pe-5 ps-auto">
                    <a class="nav-link" href="#">Estudiantes</a>
                </li>
            </ul>
        </div>
    </nav>

    <script type="text/javascript" src="./js/compraTickets.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous">
    </script>
</body>

</html>