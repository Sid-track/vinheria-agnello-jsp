<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="componentes/organismos/template.jsp" %>

<link rel="stylesheet" href="css/produto.css">

<a href="loja" class="voltar">← Voltar para a loja</a>

<section class="produto-detalhes">
    <div class="produto-imagem">
        <img src="${produto.imagem}" alt="${produto.nome}" class="produto-img"/>
    </div>
    <div class="produto-info">
        <h1>${produto.nome}</h1>
        <p class="sub">Um clássico português com personalidade e sofisticação</p>
        <p class="descricao">
            O Porta 6 Tinto é um vinho que cativa logo no primeiro gole. Com um blend equilibrado de Touriga Nacional,
            Tinta Roriz e Castelão, ele apresenta um perfil frutado e macio, perfeito para qualquer ocasião.
        </p>
        <blockquote>
            <p>“Um vinho versátil e muito agradável, com aromas intensos de frutas vermelhas maduras, notas sutis
                de especiarias e um leve toque de baunilha. Na boca, é equilibrado, com taninos suaves e um final aveludado.”</p>
        </blockquote>
        <div class="preco">
            <span>R$ ${produto.preco}</span>
            <button>Adicionar</button>
        </div>
    </div>
</section>

<section class="ficha">
    <h2>Ficha Técnica</h2>
    <table class="ficha-tecnica">
        <tr><th>País</th><td>Portugal</td><th>Temperatura</th><td>16-18ºC</td></tr>
        <tr><th>Região</th><td>Lisboa</td><th>Harmonização</th><td>Massas com molho vermelho, carnes grelhadas</td></tr>
        <tr><th>Uvas</th><td>Touriga Nacional, Tinta Roriz, Castelão</td><th>Amadurecimento</th><td>Passagem por barricas</td></tr>
        <tr><th>Safra</th><td>2022</td><th>Tipo</th><td>Tinto seco</td></tr>
        <tr><th>Teor alcoólico</th><td>13,5%</td><th>Volume</th><td>750ml</td></tr>
    </table>
</section>

<div class="relacionados">
    <h2>Parecidos com esse</h2>
    <div class="cards">
        <c:forEach var="p" items="${relacionados}" begin="0" end="3">
            <jsp:include page="componentes/moleculas/produto-card.jsp">
                <jsp:param name="id" value="${p.id}" />
                <jsp:param name="nome" value="${p.nome}" />
                <jsp:param name="preco" value="${p.preco}" />
                <jsp:param name="imagem" value="${p.imagem}" />
            </jsp:include>
        </c:forEach>
    </div>
</div>

<jsp:include page="/componentes/organismos/footer.jsp" />