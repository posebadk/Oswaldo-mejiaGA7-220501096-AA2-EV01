<%-- 
    Document   : modificar
    Created on : 11/05/2024, 1:01:04 p. m.
    Author     : Conejo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Editar</h2>
        <form action="" method="POST" autocomplete="off">
            <input id="id" name="id" type="hidden" /> 

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
