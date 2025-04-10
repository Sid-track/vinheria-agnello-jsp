<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/componentes/organismos/template.jsp" %>

<link rel="stylesheet" href="css/clube.css">

<section class="clube-container">
    <h1 class="clube-titulo">Clube Agnello</h1>
    <p class="clube-sub">Assinaturas para Todos os Momentos</p>

    <p class="clube-descricao">
        O Clube Vinheria Agnello foi criado para quem deseja explorar o mundo dos vinhos com curadoria especializada, garantindo seleções exclusivas todos os meses. Seja você um apreciador iniciante ou um verdadeiro sommelier, temos o plano ideal para sua jornada enológica.
        <br><br>
        Agora, além das assinaturas individuais, apresentamos a <strong>Assinatura Empresarial</strong>, perfeita para hotéis, restaurantes e empresas que desejam oferecer experiências sofisticadas e personalizadas para seus clientes e colaboradores.
    </p>

    <h2 class="clube-sec">Como funciona?</h2>
    <div class="clube-passos">
        <div class="passo">
            <i class="fa-solid fa-check"></i>
            <p><strong>Escolha seu plano</strong><br>Essencial, Clássico, Reserva ou Empresarial.</p>
        </div>
        <div class="passo">
            <i class="fa-solid fa-box"></i>
            <p><strong>Receba em casa</strong><br>Seleção dos sommeliers, com frete gratuito.</p>
        </div>
        <div class="passo">
            <i class="fa-solid fa-wine-glass"></i>
            <p><strong>Aprenda e deguste</strong><br>Guia com dicas e harmonizações.</p>
        </div>
        <div class="passo">
            <i class="fa-solid fa-gift"></i>
            <p><strong>Benefícios</strong><br>Descontos, eventos e brindes.</p>
        </div>
        <div class="passo">
            <i class="fa-solid fa-arrows-rotate"></i>
            <p><strong>Assinatura flexível</strong><br>Pause ou cancele quando quiser.</p>
        </div>
    </div>

    <h2 class="clube-sec">Escolha seu plano</h2>
    <section class="clube-planos">
        <c:forEach var="plano" items="${planos}">
            <jsp:include page="/componentes/moleculas/plano_card.jsp">
                <jsp:param name="nome" value="${plano.nome}" />
                <jsp:param name="descricao" value="${plano.descricao}" />
                <jsp:param name="preco" value="${plano.preco}" />
            </jsp:include>
        </c:forEach>
    </section>

    <h2 class="clube-sec">Vantagens de ser um Assinante Vinheria Agnello</h2>
    <div class="clube-vantagens">
        <div class="vantagem">
            <i class="fa-solid fa-gift"></i>
            <p>Brindes exclusivos</p>
        </div>
        <div class="vantagem">
            <i class="fa-solid fa-tags"></i>
            <p>Descontos especiais</p>
        </div>
        <div class="vantagem">
            <i class="fa-solid fa-truck"></i>
            <p>Entrega facilitada</p>
        </div>
        <div class="vantagem">
            <i class="fa-solid fa-star"></i>
            <p>Eventos exclusivos</p>
        </div>
        <div class="vantagem">
            <i class="fa-solid fa-arrows-rotate"></i>
            <p>Assinatura flexível</p>
        </div>
    </div>

    <div class="clube-cta">
        <p>Viva a experiência do vinho com mais praticidade e sofisticação!</p>
        <a class="btn-assinar" href="cadastro.jsp">ASSINAR</a>
    </div>
</section>

</main>
</div>
