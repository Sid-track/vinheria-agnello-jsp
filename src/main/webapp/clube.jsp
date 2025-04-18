<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/componentes/organismos/template.jsp" %>

<link rel="stylesheet" href="css/clube.css">

<h1 class="titulo-pagina">Clube Vinheria Agnello</h1>

<section class="clube-descricao">
    <p>
        Assine nosso clube de vinhos e receba rótulos selecionados todos os meses.
        Planos flexíveis, curadoria especializada e experiências exclusivas para os amantes de vinho.
    </p>
    <a href="cadastro.jsp" class="btn-assinar">Quero Assinar</a>
</section>

<section class="clube-planos">
    <c:forEach var="plano" items="${planos}">
        <jsp:include page="/componentes/moleculas/plano_card.jsp">
            <jsp:param name="nome" value="${plano.nome}" />
            <jsp:param name="descricao" value="${plano.descricao}" />
            <jsp:param name="preco" value="${plano.preco}" />
        </jsp:include>
    </c:forEach>
</section>

</main>
</div>
