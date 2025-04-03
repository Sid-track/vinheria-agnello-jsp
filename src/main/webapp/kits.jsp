<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/componentes/organismos/template.jsp" %>

<link rel="stylesheet" href="css/kits.css">

<h1 class="titulo-pagina">Kits Presentes</h1>

<p class="kits-descricao">
    Presentes ideais para quem aprecia bons momentos. Escolha entre kits temáticos e surpresas selecionadas.
</p>

<div class="kits">
    <c:forEach var="kit" items="${kits}">
        <jsp:include page="/componentes/moleculas/kit_card.jsp" />
    </c:forEach>
</div>

</main>
</div>
