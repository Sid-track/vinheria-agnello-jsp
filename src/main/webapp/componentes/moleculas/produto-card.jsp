<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="css/produto-card.css">

<div class="produto-card">
    <img src="${param.imagem}" alt="${param.nome}" />
    <h3>${param.nome}</h3>
    <p>R$ ${param.preco}</p>
    <a href="produto.jsp?id=${param.id}" class="btn">Ver Produto</a>
</div>

