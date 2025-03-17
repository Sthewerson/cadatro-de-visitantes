<%@ page import="java.util.ArrayList" %>
<%
    // Recupera a lista de visitantes da sessão
    ArrayList<String> visitantes = (ArrayList<String>) session.getAttribute("visitantes");
    if (visitantes == null) {
        visitantes = new ArrayList<>();
        session.setAttribute("visitantes", visitantes);
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Consultar Registros</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f9f9f9; margin: 20px; }
        .container { max-width: 600px; margin: auto; background: white; padding: 20px; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); }
        h1 { text-align: center; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #ccc; padding: 10px; text-align: left; }
        th { background-color: #007bff; color: white; }
        a { text-decoration: none; color: #007bff; font-size: 14px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>Registros de Visitantes</h1>
        <table>
            <tr>
                <th>Registro</th>
            </tr>
            <% for (String visitante : visitantes) { %>
                <tr>
                    <td><%= visitante %></td>
                </tr>
            <% } %>
        </table>
        <a href="index.jsp">Voltar ao Início</a>
    </div>
</body>
</html>