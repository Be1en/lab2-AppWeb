<%-- 
    Document   : OperacionesBasicas
    Created on : 08/09/2023, 10:59:38 PM
    Author     : valer
--%>
<%@page import="com.miempresa.webapp02ejercicio.OperacionesBasicas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.3.1/css/bootstrap.min.css" type="text/css" />
    </head>
    <body>
        <div class="container mt-5">
            <div class="mt-2" style="font-size: 30px;">
                Recepción de variables
            </div>
            
            <div class="mt-3" >
                

               <%
                    int num1 = Integer.parseInt(request.getParameter("num1"));
                    int num2 = Integer.parseInt(request.getParameter("num2"));
                    String operacion = request.getParameter("operacion");
                    OperacionesBasicas obj = new OperacionesBasicas();
                    double resultado = 0;

                    if ("suma".equals(operacion)) {
                        resultado = obj.suma(num1, num2);
                    } else if ("resta".equals(operacion)) {
                        resultado = obj.resta(num1, num2);
                    } else if ("multiplicacion".equals(operacion)) {
                        resultado = obj.multiplicacion(num1, num2);
                    } else if ("division".equals(operacion)) {
                        if (num2 != 0) { // Evitar la división por cero
                            resultado = obj.division(num1, num2);
                        } else {
                            out.print("Error: División por cero no permitida.");
                        }
                    }
                    out.print("Resultado: "+resultado);

                %>

            </div>
            <div class="mt-3" >
                <a class="btn btn-primary" href="opbasicas.html" role="button">Volver a enviar datos</a>
            </div>
        </div>
    </body>
</html>