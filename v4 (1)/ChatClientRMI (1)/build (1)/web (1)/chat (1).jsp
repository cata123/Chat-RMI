<%-- 
    Document   : chat
    Created on : 2/11/2016, 09:27:26 AM
    Author     : Anderson Ramirez
--%>

<%@page import="java.awt.event.ActionEvent"%>
<%@page import="java.awt.event.ActionListener"%>
<%@page import="javax.swing.Timer"%>
<%@page import="java.util.List"%>
<%@page import="com.chat.service.ChatClient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ChatClient cliente = (ChatClient) session.getAttribute("clienteChat");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <script src="resources/js/lib/jquery.js"></script>
        <script src="resources/js/lib/jquery-2.1.4.min.js"></script>
        <title>Chat</title>
    </head>
    <body>
        
       <div class="conteiner">
            <div class="panel panel-success" style="width: 500px; height: 100px; background-color:#D5F5E3; border: 3px solid #2ECC71;">
                <h1 style="color:#3498DB;">Usuario: <%= cliente.getUsername()%></h1>
            </div>
        </div>
        
    <div class="panel panel-success" style="width: 500px; height: 300px; overflow: scroll; border: 3px solid #2ECC71;">
    <div class="panel-body" id="ventana_chat" style="ventana_chat:before; position:relative;
        padding:15px;
        margin:1em 0 3em;
        color:#000;
        background:#f3961c;  -moz-border-radius:10px;
        -webkit-border-radius:10px;
        border-radius:10px;
        background:-moz-linear-gradient(top, #f9d835, #f3961c);
        background:linear-gradient(top, #f9d835, #f3961c);"  >
  <!-- Aquí se van insertando los mensajes -->
    </div>
        <script>

            $(document).ready(function () {

                var timerCount = 0;

                var timer = setInterval(function () {

                    $.post('/ChatClientRMI/ServletActualizarMensajes', {}, function (mensaje) {
                        $("#ventana_chat").append(mensaje);
                    });



//                    console.log("Nuevos mensajes: " + nuevosMensajes);

//                    for (var i = 0; i < nuevosMensajes; i++) {
//                        mensaje = '';
//                        mensaje += usuariosNuevosMensajes[i];
//                        mensaje += ": ";
//                        mensaje += contenidoNuevosMensajes[i];
//
//                        console.log("Mensaje " + i + ": " + mensaje);
//                        $("#ventana_chat").append(mensaje);
//                    }

                    timerCount++;
                }, 1000);

                var enviarMensaje = function () {

                    var mensaje;

                    if ($("#input_mensaje").val() !== '' && $("#input_mensaje").val() !== undefined) {
                        
                        mensaje = $("#input_mensaje").val();
                        $("#input_mensaje").val('');

                        $.post('/ChatClientRMI/ServletEnviarMensaje', {mensaje: mensaje}, function (mensaje) {
                            $("#ventana_chat").append(mensaje);
                        });
                    }
                };
                
                $("#boton_enviar").click(function() {
                    enviarMensaje();
                });

            });
        </script>
    </div>
     <div class="conteiner">
            <div class="panel panel-success" style="width: 500px; height: 100px; background-color:#D5F5E3; border: 3px solid #2ECC71;">
            <div class="col-md-12">
            <div class="input-group">
            <input class="col-md-8" id="input_mensaje" type="text" placeholder="Ingresa tu mensaje" size="65" style="border-radius: 5px 5px 5px 5px;border: 1px solid #446fdb;">
            <input class="col-md-4" id="boton_enviar" value="Enviar" type="button" size="15" style="border-radius: 5px 5px 5px 5px; border:3px solid #446fdb;">    
            </div>
            </div>
            </div>
        </div>    
    </body>
</html>
