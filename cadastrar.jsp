<%@ page import="java.util.ArrayList" %>
<%
    // Inicializa a lista de visitantes na sessão, caso ainda não exista
    ArrayList<String> visitantes = (ArrayList<String>) session.getAttribute("visitantes");
    if (visitantes == null) {
        visitantes = new ArrayList<>();
        session.setAttribute("visitantes", visitantes);
    }

    // Processa o formulário quando enviado
    String nome = request.getParameter("nome");
    String motivo = request.getParameter("motivo");
    String dataHora = request.getParameter("dataHora");

    if (nome != null && motivo != null && dataHora != null) {
        visitantes.add("Nome: " + nome + " | Motivo: " + motivo + " | Data/Hora: " + dataHora);
        out.println("<p style='color:green;'>Visitante cadastrado com sucesso!</p>");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Cadastrar Visitante</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f9f9f9; margin: 20px; }
        .container { max-width: 400px; margin: auto; background: white; padding: 20px; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); }
        h1 { text-align: center; }
        label { font-weight: bold; display: block; margin-top: 10px; }
        input, button { width: 100%; margin-bottom: 15px; padding: 10px; border: 1px solid #ccc; border-radius: 4px; }
        button { background-color: #28a745; color: white; font-size: 16px; }
        button:hover { background-color: #218838; }
        a { text-decoration: none; color: #007bff; font-size: 14px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>Cadastrar Visitante</h1>
        <form action="cadastrar.jsp" method="POST">
            <label for="nome">Nome:</label>
            <input type="text" id="nome" name="nome" required>

            <label for="motivo">Motivo:</label>
            <input type="text" id="motivo" name="motivo" required>

            <label for="dataHora">Data e Hora:</label>
            <input type="datetime-local" id="dataHora" name="dataHora" required>

            <button type="submit">Cadastrar</button>
        </form>
        <a href="index.jsp">Voltar ao Início</a>
    </div>
</body>
</html>
