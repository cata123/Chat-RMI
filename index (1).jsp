"<%-- 
    Document   : index
    Created on : 2/11/2016, 08:48:07 AM
    Author     : Anderson Ramirez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <title>Chat RMI</title>
    </head>
    <body style="background-color:#e6eeff;">
        <div class="conteiner">
            <div class="col-md-12 text-center">
                <h1 style="color:#20B2AA;">Bienvenido al chat</h1>
                <div class="conteiner">
                    <h3 style="color:#0080ff;">Ingerse su nombre</h3>
            <form class="form-inline" action="ServletRegistrarUsuario" method="POST">
                <input name="username" type="text" placeholder="Ingrese su nombre de usuario" size="15" style="border-radius: 5px 5px 5px 5px; border:3px solid #446fdb;">
                <input type="submit" value="Registrar" size="15" style="border-radius: 5px 5px 5px 5px; border:3px solid #446fdb;">
            </form>
                </div>
            </div>
        </div>
    </body>
</html>
