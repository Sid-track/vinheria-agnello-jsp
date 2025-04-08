<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="css/kit_card.css">

<div class="kit-card">
    <div class="imagem-container">
        <img src="${param.imagem}" alt="${param.nome}" />
    </div>
    <h3>${param.nome}</h3>
    <p class="descricao">${param.descricao}</p>
    <div class="rodape">
        <span class="preco">R$ ${param.preco}</span>
        <div class="icones">
            <i class="fa-solid fa-cart-shopping"></i>
            <i class="fa-regular fa-heart"></i>
        </div>
    </div>
</div>
