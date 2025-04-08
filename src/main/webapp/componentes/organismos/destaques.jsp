<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<link rel="stylesheet" href="css/destaques.css">

<section class="destaques">
    <div class="destaque">
        <h2>Kits Presentes</h2>
        <p>Escolhas elegantes para presentear com estilo.</p>
        <div class="mini-card">
            <jsp:include page="/componentes/moleculas/kit_card.jsp">
                <jsp:param name="nome" value="Kit Aromas do Sul" />
                <jsp:param name="descricao" value="2 vinhos + acessórios exclusivos." />
                <jsp:param name="preco" value="179,90" />
                <jsp:param name="imagem" value="images/kit1.jpg" />
                <jsp:param name="id" value="1" />
            </jsp:include>
        </div>
        <a href="kits" class="link">Ver todos os kits</a>
    </div>

    <div class="destaque">
        <h2>Loja Completa</h2>
        <p>Rótulos nacionais e importados para todos os gostos.</p>
        <div class="mini-card">
            <jsp:include page="/componentes/moleculas/produto-card.jsp">
                <jsp:param name="nome" value="Vinho Tinto Reserva" />
                <jsp:param name="preco" value="89,90" />
                <jsp:param name="imagem" value="images/vinho1.jpg" />
                <jsp:param name="id" value="1" />
            </jsp:include>
        </div>
        <a href="loja" class="link">Ver mais vinhos</a>
    </div>
</section>
