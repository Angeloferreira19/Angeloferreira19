<%-- 
    Document   : angelo
    Created on : 24 de mar. de 2025, 23:10:13
    Author     : Angelo Ferreira
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.GregorianCalendar" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
    int ano = Integer.parseInt(request.getParameter("ano"));
    int mes = Integer.parseInt(request.getParameter("mes")) - 1; 
    
    Calendar calendario = new GregorianCalendar(ano, mes, 1);

    int diasNoMes = calendario.getActualMaximum(Calendar.DAY_OF_MONTH);
    
    int primeiroDiaSemana = calendario.get(Calendar.DAY_OF_WEEK);

    SimpleDateFormat formatoMes = new SimpleDateFormat("MMMM yyyy");
    String nomeMesAno = formatoMes.format(calendario.getTime());
%>

<!DOCTYPE html>
<html>
<head>
    <title>Calendário <%= nomeMesAno %></title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }
    </style>
</head>
<body>

    <h2><%= nomeMesAno %></h2>

    <table>
        <tr>
            <th>Domingo</th>
            <th>Segunda-feira</th>
            <th>Terça-feira</th>
            <th>Quarta-feira</th>
            <th>Quinta-feira</th>
            <th>Sexta-feira</th>
            <th>Sábado</th>
        </tr>
        <tr>
            <%
                for (int i = 1; i < primeiroDiaSemana; i++) {
                    out.print("<td></td>");
                }

                for (int dia = 1; dia <= diasNoMes; dia++) {
                    out.print("<td>" + dia + "</td>");

                    if ((primeiroDiaSemana + dia - 1) % 7 == 0) {
                        out.print("</tr><tr>");
                    }
                }

                for (int i = (primeiroDiaSemana + diasNoMes - 1) % 7; i < 6; i++) {
                    out.print("<td></td>");
                }
            %>
        </tr>
    </table>

</body>
</html>