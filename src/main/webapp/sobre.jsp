<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/componentes/organismos/template.jsp" %>

<link rel="stylesheet" href="css/sobre.css">
<link rel="stylesheet" href="css/sobre_bloco.css">

<h1 class="titulo-pagina">Sobre a Vinheria Agnello</h1>

<div class="sobre-conteudo">
    <jsp:include page="/componentes/moleculas/sobre_bloco.jsp">
        <jsp:param name="titulo" value="Nossa História" />
        <jsp:param name="texto" value="Fundada com paixão por vinhos artesanais, a Vinheria Agnello conecta produtores e apreciadores desde 2024." />
    </jsp:include>

    <jsp:include page="/componentes/moleculas/sobre_bloco.jsp">
        <jsp:param name="titulo" value="Missão" />
        <jsp:param name="texto" value="Oferecer experiências únicas através de vinhos selecionados com curadoria e carinho." />
    </jsp:include>

    <jsp:include page="/componentes/moleculas/sobre_bloco.jsp">
        <jsp:param name="titulo" value="Valores" />
        <jsp:param name="texto" value="Tradição, autenticidade, sustentabilidade e respeito por cada safra e produtor." />
    </jsp:include>
</div>

</main>
</div>
