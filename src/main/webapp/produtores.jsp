<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/componentes/organismos/template.jsp" %>

<link rel="stylesheet" href="css/produtores.css">
<link rel="stylesheet" href="css/produtor_card.css">

<h1 class="titulo-pagina">Nossos Produtores</h1>

<p class="produtores-descricao">
    Conheça os vinicultores parceiros da Vinheria Agnello. Histórias, tradições e paixão por cada garrafa.
</p>

<div class="lista-produtores">
    <c:forEach var="produtor" items="${produtores}">
        <jsp:include page="/componentes/moleculas/produtor_card.jsp">
            <jsp:param name="nome" value="${produtor.nome}" />
            <jsp:param name="regiao" value="${produtor.regiao}" />
            <jsp:param name="imagem" value="${produtor.imagem}" />
        </jsp:include>
    </c:forEach>

</div>

</main>
</div>
