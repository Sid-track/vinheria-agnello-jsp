<link rel="stylesheet" href="css/kit_card.css" />
<div class="kit">
    <img src="${param.imagem}" alt="${param.nome}" />
    <h3>${param.nome}</h3>
    <p>${param.descricao}</p>
    <p class="preco">R$ ${param.preco}</p>
    <a href="kit.jsp?id=${param.id}" class="btn">Ver Kit</a>
</div>
