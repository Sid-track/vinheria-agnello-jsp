<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vinheria Agnello - Home</title>
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
<div class="container">
    <!-- Menu lateral como organismo -->
    <jsp:include page="componentes/organismos/menu.jsp" />

    <!-- Conteúdo principal -->
    <main class="main-content">
        <!-- Banner principal (organismo) -->
        <jsp:include page="componentes/organismos/banner.jsp" />

        <!-- Destaques (organismo) -->
        <jsp:include page="componentes/organismos/destaques.jsp" />

        <!-- Produtos em destaque (organismo) -->
        <section class="produtos-destaque">
            <h2>Ofertas da Semana</h2>
            <div class="produtos">
                <c:forEach var="produto" items="${produtosDestaque}">
                    <jsp:include page="componentes/moleculas/produto-card.jsp" />
                </c:forEach>
            </div>
        </section>
    </main>
</div>
</body>
</html>
