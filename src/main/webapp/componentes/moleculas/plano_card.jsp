<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<link rel="stylesheet" href="css/plano_card.css" />

<div class="plano" style="--cor:${param.cor}">
    <div class="plano-topo">
        <h2>${param.nome}</h2>
    </div>
    <p class="plano-desc">${param.descricao}</p>

    <ul class="plano-beneficios">
        <c:forEach var="beneficio" items="${fn:split(param.beneficios, ';')}">
            <li>${beneficio}</li>
        </c:forEach>
    </ul>

    <p class="plano-preco">R$ ${param.preco}/mês</p>

    <a class="plano-btn" href="cadastro.jsp">${param.botao}</a>
</div>
