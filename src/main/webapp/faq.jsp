<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/componentes/organismos/template.jsp" %>

<link rel="stylesheet" href="css/faq.css">
<link rel="stylesheet" href="css/faq_item.css">

<h1 class="titulo-pagina">Perguntas Frequentes</h1>

<div class="faq-lista">
    <c:forEach var="faq" items="${faqs}">
        <jsp:include page="/componentes/moleculas/faq_item.jsp" />
    </c:forEach>
</div>

</main>
</div>
