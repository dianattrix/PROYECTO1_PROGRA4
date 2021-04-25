<%-- 
    Document   : login
    Created on : 25 abr. 2021, 14:23:01
    Author     : JeanKa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Login</title>
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="wrapper">
            <h1>Login</h1>
            <form method="GET" action="ServletLogin">
                <p>
                    <input type="text" name="usuario" placeholder="Usuario"/><br>
                    <input type="password" name="contraseña" placeholder="Contraseña"/>
                </p>
                <p>
                    <button  name="acceder" >Acceder</button><br>
                    <a href="RegistroEstudiantes.jsp">Registrate</a>
                </p>
            </form>
            <p id="pfinal">
                <a href="index.jsp">Volver</a>
            </p>
        </div>
    </body>
</html>
