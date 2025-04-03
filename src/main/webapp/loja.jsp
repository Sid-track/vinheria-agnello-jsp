<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/componentes/organismos/template.jsp" %>

<link rel="stylesheet" href="css/loja.css">
<link rel="stylesheet" href="css/produto-card.css">

<h1 class="titulo-pagina">Nossa Loja</h1>

<div class="produtos">
    <c:forEach var="produto" items="${produtos}">
        <jsp:include page="/componentes/moleculas/produto-card.jsp" />
    </c:forEach>

    <c:forEach var="produto" items="${produtos}">
        <jsp:include page="/componentes/moleculas/produto-card.jsp" />
    </c:forEach>

    <c:forEach var="produto" items="${produtos}">
        <jsp:include page="/componentes/moleculas/produto-card.jsp" />
    </c:forEach>


</div>

</main>
</div>
