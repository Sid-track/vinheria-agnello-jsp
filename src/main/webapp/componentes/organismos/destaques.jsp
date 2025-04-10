<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="css/destaques.css">

<section class="destaques">
    <div class="destaque">
        <h2>Kits Presentes</h2>
        <p>Escolhas elegantes para presentear com estilo.</p>
        <div class="mini-card">
            <c:forEach var="kit" items="${kits}" begin="0" end="1">
                <jsp:include page="/componentes/moleculas/kit_card.jsp">
                    <jsp:param name="id" value="${kit.id}" />
                    <jsp:param name="nome" value="${kit.nome}" />
                    <jsp:param name="descricao" value="${kit.descricao}" />
                    <jsp:param name="preco" value="${kit.preco}" />
                    <jsp:param name="imagem" value="${kit.imagem}" />
                </jsp:include>
            </c:forEach>
        </div>

        <a href="kits" class="link">Ver todos os kits</a>
    </div>

    <div class="destaque">
        <h2>Loja Completa</h2>
        <p>Rótulos nacionais e importados para todos os gostos.</p>
        <div class="mini-card">
            <c:forEach var="produto" items="${produtos}" begin="0" end="1">
                <jsp:include page="/componentes/moleculas/produto-card.jsp">
                    <jsp:param name="id" value="${produto.id}" />
                    <jsp:param name="nome" value="${produto.nome}" />
                    <jsp:param name="preco" value="${produto.preco}" />
                    <jsp:param name="imagem" value="${produto.imagem}" />
                </jsp:include>
            </c:forEach>
        </div>

        <a href="loja" class="link">Ver mais vinhos</a>
    </div>
</section>
