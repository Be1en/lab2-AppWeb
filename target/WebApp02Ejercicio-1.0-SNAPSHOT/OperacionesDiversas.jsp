<%-- 
    Document   : OperacionesDiversas
    Created on : 08/09/2023, 11:30:54 PM
    Author     : valer
--%>

<%@page import="com.miempresa.webapp02ejercicio.OperacionesDiversas"%>
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
                    String operacion = request.getParameter("operacion");
                    OperacionesDiversas obj = new OperacionesDiversas();
                    double resultado = 0;

                    if ("raizcuadrada".equals(operacion)) {
                        resultado = obj.raizCuadrada(num1);
                    } else if ("raizcubica".equals(operacion)) {
                        resultado = obj.raizCubica(num1);
                    } else if ("potencia".equals(operacion)) {
                        int exponente = Integer.parseInt(request.getParameter("exponente"));
                        resultado = obj.potencia(num1, exponente);
                    } else if ("valorabsoluto".equals(operacion)) {
                            resultado = obj.valorAbsoluto(num1);
                    }
                    out.print("Resultado: "+resultado);

                %>

            </div>
            <div class="mt-3" >
                <a class="btn btn-primary" href="opdiversas.html" role="button">Volver a enviar datos</a>
            </div>
        </div>
    </body>
</html>