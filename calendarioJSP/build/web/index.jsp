<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calendário</title>
</head>
<body>

    <h1>Calendário</h1>
    <h2>Selecione o Mês e o Ano</h2>

    <form action="angelo.jsp" method="get">
        <label for="mes">Mês:</label>
        <select name="mes" id="mes">
            <option value="1">Janeiro</option>
            <option value="2">Fevereiro</option>
            <option value="3">Março</option>
            <option value="4">Abril</option>
            <option value="5">Maio</option>
            <option value="6">Junho</option>
            <option value="7">Julho</option>
            <option value="8">Agosto</option>
            <option value="9">Setembro</option>
            <option value="10">Outubro</option>
            <option value="11">Novembro</option>
            <option value="12">Dezembro</option>
        </select><br><br>

        <label for="ano">Ano:</label>
        <input type="number" name="ano" id="ano" min="1900" value="2023"><br><br>

        <input type="submit" value="Gerar Calendário">
    </form>

</body>
</html>