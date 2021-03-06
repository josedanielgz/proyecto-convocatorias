<%-- 
    Document   : inscribirConvocatoria
    Created on : 16/06/2021, 05:11:31 PM
    Author     : anyusername
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession sesion = request.getSession(false);

    if (sesion == null || (sesion.getAttribute("documento") == null)) {

        request.getRequestDispatcher("../../index.jsp").forward(request, response);

    }

    Integer s = (Integer) sesion.getAttribute("documento");


%>

<html>
    <head>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Inscríbete en una convocatoria</title>
        <link href='https://ww2.ufps.edu.co/assets/img/ico/favicon.ico' rel='Shortcut icon'>

        <script src="../../vendor/jquery/jquery.min.js"></script>
        <link href="../../vendor/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet">
        <script type="text/javascript" src="../../vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="../../js/ajax/inscripcion.js"></script>
    </head>
    <body>


        <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">

            <div class="container">

                <a class="navbar-brand" href="../../">Usuario <%=s%></a>

                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarResponsive">

                    <ul class="navbar-nav ml-auto">

                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/secciones/resp/listarInscripciones.jsp">Inscripciones disponibles</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/cerrarSesion">Cerrar sesión</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/secciones/resp/listarConvocatorias.jsp">Listar convocatorias</a>
                        </li>

                    </ul>

                </div>

            </div>

        </nav>

        <div class="container">
            <h1>Inscripción en una convocatoria</h1>
            <!--https://stackoverflow.com/a/3350351-->
            <!--La petición AJAX se realiza mediante una llamada a una función JS que sobreescribe el evento convencional de los formularios-->
            <form id="subir_archivo" enctype="multipart/form-data" method="post" onsubmit="inscripcionConvocatoria(event)">
                <div class="form-group">
                    <label>Usuario: </label><input class="form-control" type="number" value="<%=s%>" id="documento" readonly="readonly"><br>
                    <label>Convocatoria: </label><input class="form-control" type="text" id="convocatoria"><br>
                    <input class="form-control" id="ajaxfile" type="file"/> <br><br>
                    <button class="btn btn-primary" type="submit">Registrar inscripción</button>
                </div>
            </form>
            <div id="resultado"></div>
        </div>
        <footer class="py-5 bg-dark">
            <div class="container">
                <p class="m-0 text-center text-white">Grupo 9. 2021</p>
            </div>
        </footer>

    </body>
</html>
