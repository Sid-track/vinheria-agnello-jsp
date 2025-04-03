<link rel="stylesheet" href="css/produto-card.css">
<div class="produto-card">
    <img src="${produto.imagem}" alt="${produto.nome}" />
    <h3>${produto.nome}</h3>
    <p>R$ ${produto.preco}</p>
    <a href="produto.jsp?id=${produto.id}" class="btn">Ver Produto</a>
</div>
