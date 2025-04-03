<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/componentes/organismos/template.jsp" %>

<link rel="stylesheet" href="css/produtores.css">
<link rel="stylesheet" href="css/produtor_card.css">

<h1 class="titulo-pagina">Nossos Produtores</h1>

<p class="produtores-descricao">
    Conheça os vinicultores parceiros da Vinheria Agnello. Histórias, tradições e paixão por cada garrafa.
</p>

<div class="lista-produtores">
    <c:forEach var="produtor" items="${produtores}">
        <jsp:include page="/componentes/moleculas/produtor_card.jsp" />
    </c:forEach>
</div>

</main>
</div>
