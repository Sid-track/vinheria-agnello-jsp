<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/componentes/organismos/template.jsp" %>

<link rel="stylesheet" href="css/dicas.css">
<link rel="stylesheet" href="css/dica_card.css">

<h1 class="titulo-pagina">Dicas e Curiosidades</h1>

<p class="dicas-descricao">
    Aprofunde-se no universo do vinho com dicas práticas, curiosidades e orientações para aproveitar cada taça ao máximo.
</p>

<div class="lista-dicas">
    <c:forEach var="dica" items="${dicas}">
        <jsp:include page="/componentes/moleculas/dica_card.jsp" />
    </c:forEach>
</div>

</main>
</div>
