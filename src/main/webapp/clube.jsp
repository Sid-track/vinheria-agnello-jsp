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
    <div class="clube-etapas">
        <div class="etapa">
            <i class="fa-solid fa-check"></i>
            <h4>Escolha seu plano</h4>
            <p>Essencial, Clássico, Reserva ou Empresarial.</p>
        </div>
        <div class="etapa">
            <i class="fa-solid fa-box"></i>
            <h4>Receba em casa</h4>
            <p>Seleção dos sommeliers, com frete gratuito.</p>
        </div>
        <div class="etapa">
            <i class="fa-solid fa-wine-glass"></i>
            <h4>Aprenda e deguste</h4>
            <p>Guia com dicas e harmonizações.</p>
        </div>
        <div class="etapa">
            <i class="fa-solid fa-gift"></i>
            <h4>Benefícios</h4>
            <p>Descontos, eventos e brindes.</p>
        </div>
        <div class="etapa">
            <i class="fa-solid fa-arrows-rotate"></i>
            <h4>Assinatura flexível</h4>
            <p>Pause ou cancele quando quiser.</p>
        </div>
    </div>

    <h2 class="clube-sec">Escolha seu plano</h2>
    <section class="clube-planos">
        <c:forEach var="plano" items="${planos}">
            <jsp:include page="/componentes/moleculas/plano_card.jsp">
                <jsp:param name="nome" value="${plano.nome}" />
                <jsp:param name="descricao" value="${plano.descricao}" />
                <jsp:param name="beneficios" value="${fn:join(plano.beneficios, ';')}" />
                <jsp:param name="preco" value="${plano.preco}" />
                <jsp:param name="botao" value="${plano.botao}" />
                <jsp:param name="cor" value="${plano.cor}" />
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
<jsp:include page="/componentes/organismos/footer.jsp" />
</main>
</div>
