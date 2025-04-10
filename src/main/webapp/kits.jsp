<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/componentes/organismos/template.jsp" %>

<link rel="stylesheet" href="css/kits.css">
<link rel="stylesheet" href="css/kit_card.css">

<h1 class="titulo-pagina">Kits Presentes</h1>

<p class="kits-descricao">
    Presentes ideais para quem aprecia bons momentos. Escolha entre kits temáticos e surpresas selecionadas.
</p>
<hr>

<jsp:include page="/componentes/organismos/controle-loja.jsp" />

<div class="layout-kits">
    <jsp:include page="/componentes/organismos/filtro-kits.jsp" />

    <div class="kits">
        <c:forEach var="kit" items="${kits}">
            <div class="kit-card">
                <div class="imagem-container">
                    <img src="${kit.imagem}" alt="${kit.nome}" />
                </div>
                <h3>${kit.nome}</h3>
                <ul class="descricao">
                    <c:forEach var="item" items="${kit.descricao}">
                        <li>${item}</li>
                    </c:forEach>
                </ul>
                <div class="rodape">
                    <span class="preco">R$ ${kit.preco}</span>
                    <div class="icones">
                        <i class="fa-solid fa-cart-shopping"></i>
                        <i class="fa-regular fa-heart"></i>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

</main>
</div>
