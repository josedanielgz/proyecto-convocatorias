<%-- 
    Document   : ListaConvocatoria
    Created on : 13 may. 2021, 09:35:39
    Author     : Usuario
--%>
<%@page import="modelo.Convocatoria"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="facade" class="facade.Facade" scope="page"></jsp:useBean>
<%
    List<Convocatoria> convocatorias = facade.buscarConvocatorias();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Convocatorias</title>

        <!--
        <link href="../../css/dataTable/jquery.dataTables.min.css" type="text/css" rel="stylesheet">
        <link href="../../css/dataTable/dataTables.bootstrap4.min.css" type="text/css" rel="stylesheet">
        -->

        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <!-- JQuery -->
        <script type="text/javascript" src="../../vendor/jquery/jquery.min.js"></script>
        <!--
        <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/general.js"></script>
        -->

        <!-- Bootstrap core CSS -->
        <link href="../../vendor/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet">
        <script type="text/javascript" src="../../vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--
        <link href="../../vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
        <link href="../../css/dataTable/buttons.dataTables.min.css" rel="stylesheet">
        -->


    </head>
    <body>

        <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">

            <div class="container">

                <a class="navbar-brand" href="../../">Menu Convocatoria</a>

                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarResponsive">

                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="../../secciones/forms/inscribirConvocatoria.html">Inscripción</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../../secciones/forms/registrarUsuario.html">Registro de usuario</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../../secciones/forms/login.html">Iniciar Sesion</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./">Listado Convocatorias</a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>

        <div class="container">
            <table class="table table-stripped">
                <thead>
                    <tr>
                        <th scope="col">#</td>
                        <th scope="col">Nombre</td>
                        <th scope="col">Fecha Inicio</td>
                        <th scope="col">Fecha Final</td>
                        <th scope="col">Estado</td>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (Convocatoria c : convocatorias) {
                    %>

                    <tr>
                        <td><%=c.getId()%></td>
                        <td><%=c.getNombre()%></td>
                        <td><%=c.getFecha_inicio()%></td>
                        <td><%=c.getFecha_final()%></td>
                        <td><%=c.getEstado()%></td>


                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>

            <!--
                        <div>
                            Este es el tamaño del arreglo <%//convocatorias.size()%>
                        </div>
            -->
        </div>

        <!--
                <script src="js/dataTable/jquery.dataTables.min.js"></script>
                <script src="js/dataTable/dataTables.buttons.min.js"></script>
                <script src="js/dataTable/buttons.flash.min.js"></script>
                <script src="js/dataTable/jszip.min.js"></script>
                <script src="js/dataTable/pdfmake.min.js"></script>
                <script src="js/dataTable/vfs_fonts.js"></script>
                <script src="js/dataTable/buttons.html5.min.js"></script>
                <script src="js/dataTable/buttons.print.min.js"></script>
        
                <script type="text/javascript">
                    $(document).ready(function () {
                        $('#tblConvocatorias').DataTable({
                            dom: 'Bfrtip',
                            buttons: [
                                'copy', 'csv', 'excel', 'pdf', 'print'
                            ],
                        });
                    });
                </script>
        -->
        <footer class="py-5 bg-dark">
            <div class="container">
                <p class="m-0 text-center text-white">Grupo 9. 2021</p>
            </div>
        </footer>
    </body>
</html>