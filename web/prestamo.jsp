<%-- 
    Document   : prestamo
    Created on : 02-mar-2020, 19:15:54
    Author     : DAW210
--%>

<%@page import="modelo.Cuota"%>
<%@page import="modelo.Prestamo"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Banco Miguel</h1>
        <h2>Solicitud de Prestamos</h2>

        <% ArrayList<String> meses = (ArrayList<String>) request.getAttribute("meses");
            String nombre = (String) request.getAttribute("nombre");
            if (nombre == null) {
                nombre = "";
            }
            Prestamo prest = (Prestamo) request.getAttribute("prestamo");
            String importeP, cantidad, interes, tiempo;
            if (prest == null) {
                importeP = "";
                cantidad = "0";
                interes = "0";
                tiempo = "12";
            } else {
                importeP = String.valueOf(prest.getImportePrestamo());
                cantidad = String.valueOf(prest.getCapital());
                interes = String.valueOf(prest.getInteres());
                tiempo = String.valueOf(prest.getTiempo());
            }
        %>
        <form action="Prestamo" method="post">
            <label for="nombre">Nombre:</label><input type="text" name="nombre" value="<%=nombre%>" id="nombre"><br/>
            <label for="cantidad">Cantidad solicitada:</label><input type="text" value="<%=cantidad%>" name="cantidad" id="cantidad"><br/>
            <label for="interes">Interes:</label><input type="text" name="interes" value="<%=interes%>" id="interes"><br/>
            <label for="tiempo">Tiempo( meses ):</label><select name="tiempo" id="tiempo">
                <% for (int m = 0; m < meses.size(); m++) {
                        String cadenaS = "";
                        if (tiempo.equals(meses.get(m))) {
                            cadenaS = "selected";
                        }
                %>
                <option value="<%=meses.get(m)%>" <%=cadenaS%> ><%=meses.get(m)%></option>


                <% } %>     
            </select>
            <input type="submit" value="Consultar">
            <% if (importeP != "") {%>
            <h1>Importe Total Prestamo: <%=importeP%></h1>
            <% }%>
            <table border="1">
                <% ArrayList<Cuota> cuotas = (ArrayList<Cuota>) request.getAttribute("cuotas");
                    if (cuotas != null) { %>
                <tr>
                    <th>NºCuota</th>
                    <th>Importe</th>
                    <th>Capital</th>
                    <th>Interés</th>

                    <%
                        for (int i = 0; i < cuotas.size(); i++) {
                            Cuota cuot = cuotas.get(i);

                    %>

                <tr>
                    <td><%=cuotas.get(i).numeroCuota%></td>
                    <td><%=cuotas.get(i).importeCuota%></td>
                    <td><%=cuotas.get(i).getCapitalString()%></td>
                    <td><%=cuotas.get(i).intereses%></td>
                    <%                                          }
                                        }
                    %>
            </table>
        </form>
    </body>
</html>
