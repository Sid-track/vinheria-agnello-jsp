<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/componentes/organismos/template.jsp" %>

<link rel="stylesheet" href="css/faq.css">
<link rel="stylesheet" href="css/faq_item.css">

<h1 class="titulo-pagina">Perguntas Frequentes</h1>

<div class="faq-lista">
    <c:forEach var="faq" items="${faqs}">
        <jsp:include page="/componentes/moleculas/faq_item.jsp">
            <jsp:param name="pergunta" value="${faq.pergunta}" />
            <jsp:param name="resposta" value="${faq.resposta}" />
        </jsp:include>
    </c:forEach>

</div>

</main>
</div>
