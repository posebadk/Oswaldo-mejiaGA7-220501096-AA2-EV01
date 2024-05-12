<%-- 
    Document   : index
    Created on : 11/05/2024, 5:31:24 p. m.
    Author     : Conejo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ruta</title>
    </head>
    <body>
        <h1>Tecnico</h1>
        <a href="TecnicoController?accion="nuevo">Nuevo Registro</a>
        <br />
        <br />
        <table border="1" width="80%">
            <thead>
                <tr>
                    <th>CC</th>
                    <th>Nombre</th> 
                    <th>Telefono</th> 
                    <th>Fecha</th> 
                    <th></th> 
                    <th></th>
                </tr>
            </thead>

            <tbody>
                                 
    <c:forEach var="tecnico" items="${lista}"> 
        <tr>
            <td><c:out value="${tecnico.CC}" /></td> 
            <td><c:out value="${tecnico.Nombre}" /></td>
            <td><c:out value="${tecnico.Telefono}" /></td>
            <td><c:out value="${tecnico.Fecha}" /></td>
            <td><c:out value="${tecnico.id}" /></td>
            <td><c:out value="${tecnico.id}" /></td>
        </tr>
    
    </c:forEach> 
                                       

                                        </tbody>
                                    </table>
                                </body>
                            </html>
