<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/componentes/organismos/template.jsp" %>

<link rel="stylesheet" href="css/kits.css">

<h1 class="titulo-pagina">Kits Presentes</h1>

<p class="kits-descricao">
    Presentes ideais para quem aprecia bons momentos. Escolha entre kits temáticos e surpresas selecionadas.
</p>
<div class="layout-kits">
<jsp:include page="/componentes/organismos/filtro-kits.jsp" />

<div class="kits">
    <c:forEach var="kit" items="${kits}">
        <jsp:include page="/componentes/moleculas/kit_card.jsp">
            <jsp:param name="id" value="${kit.id}" />
            <jsp:param name="nome" value="${kit.nome}" />
            <jsp:param name="descricao" value="${kit.descricao}" />
            <jsp:param name="preco" value="${kit.preco}" />
            <jsp:param name="imagem" value="${kit.imagem}" />
        </jsp:include>
    </c:forEach>

</div>
</div>
</main>
</div>
