<%-- 
    Document   : nuevo
    Created on : 11/05/2024, 1:00:56 p. m.
    Author     : Conejo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ruta</title>
    </head>
    <body>  
        <h2>Nuevo Registro</h2>


        <form action="TecnicoController?accion=insertar" method="POST" autocomplete="off">

            <p>
                CC:
                <input id="CC" name="CC" type="number" />                
            </p>
            <p>
                Nombre:
                <input id="Nombre" name="Nombre" type="text" />                
            </p>
            <p>
                Telefono:
                <input id="Telefono" name="Telefono" type="text" />                
            </p>
            <p>
                Fecha:
                <input id="Fecha" name="Fecha" type="text" />                
            </p>

            <button id="Guardar" name="Guardar" type="submit">Guardar</button>

        </form>
    </body>
</html>
