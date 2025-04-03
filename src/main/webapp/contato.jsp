<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/componentes/organismos/template.jsp" %>

<link rel="stylesheet" href="css/contato.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<h1 class="titulo-pagina">Fale Conosco</h1>

<div class="contato-conteudo">
    <div class="contato-info">
        <jsp:include page="/componentes/moleculas/contato_item.jsp">
            <jsp:param name="icone" value="fa-brands fa-whatsapp" />
            <jsp:param name="texto" value="(11) 99999-9999" />
        </jsp:include>
        <jsp:include page="/componentes/moleculas/contato_item.jsp">
            <jsp:param name="icone" value="fa-solid fa-envelope" />
            <jsp:param name="texto" value="contato@vinheria.com.br" />
        </jsp:include>
        <jsp:include page="/componentes/moleculas/contato_item.jsp">
            <jsp:param name="icone" value="fa-brands fa-instagram" />
            <jsp:param name="texto" value="@vinheriaagnello" />
        </jsp:include>
        <jsp:include page="/componentes/moleculas/contato_item.jsp">
            <jsp:param name="icone" value="fa-solid fa-location-dot" />
            <jsp:param name="texto" value="100% online - não possuímos loja física" />
        </jsp:include>
    </div>
</div>

</main>
</div>
