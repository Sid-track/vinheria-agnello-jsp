<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/componentes/organismos/template.jsp" %>

<link rel="stylesheet" href="css/loja.css">
<link rel="stylesheet" href="css/produto-card.css">

<h1 class="titulo-pagina">Nossa Loja</h1>

<div class="produtos">
    <c:forEach var="produto" items="${produtos}">
        <jsp:include page="/componentes/moleculas/produto-card.jsp">
            <jsp:param name="id" value="${produto.id}" />
            <jsp:param name="nome" value="${produto.nome}" />
            <jsp:param name="preco" value="${produto.preco}" />
            <jsp:param name="imagem" value="${produto.imagem}" />
        </jsp:include>
    </c:forEach>
</div>

</main>
</div>
