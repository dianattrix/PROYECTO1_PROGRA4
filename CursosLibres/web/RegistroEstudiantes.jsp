<%-- 
    Document   : RegistroEstudiantes
    Created on : Apr 24, 2021, 4:29:57 PM
    Author     : diana
--%>


<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Registro de estudiantes</title>
  <link rel="stylesheet" href="css\RegistroEstudiantes.css">

</head>
<body>
  <section class="container">
    <div class="login">
      <h1>Registro de estudiantes</h1>
      <form method="post" action="index.jsp">
          
        <p><input type="text" name="name" value="" placeholder="Nombre"></p>
        <p><input type="text" name="middleName" value="" placeholder="Apellido 1"></p>
        <p><input type="text" name="lastName" value="" placeholder="Apellido 2"></p>
        <p><input type="dni" id="id" size="15" maxlength="11" placeholder="Identificación"></p>
        <p><input type="dni" id="phone" size="8" maxlength="8" placeholder="Teléfono"></p>
        <p><input type="email" name="email" value="" placeholder="Correo electrónico"></p>
        <p class="submit"><input type="submit" name="commit" value="Registrarse"></p>
        
        <p> <a href="index.jsp">Volver al inicio</a></p>
      </form>
    </div>

    <div class="login-help">
      <p>Forgot your password? <a href="index.jsp">Click here to reset it</a>.</p>
    </div>
  </section>
</body>
</html>
