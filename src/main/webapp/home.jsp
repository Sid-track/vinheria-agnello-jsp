<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/componentes/organismos/template.jsp" %>


<link rel="stylesheet" href="css/home.css">

<jsp:include page="/componentes/organismos/promocao.jsp" />
<jsp:include page="/componentes/organismos/banner.jsp" />
<jsp:include page="/componentes/organismos/destaques.jsp" />

<div class="produtos-destaque">
    <h2>Produtos em Destaque</h2>
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
</div>


</main>
</div>
