<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/componentes/organismos/template.jsp" %>

<link rel="stylesheet" href="css/dicas.css">

<section class="dicas">
    <div class="dicas-header">
        <h1>Como Escolher o Vinho Certo</h1>
        <p class="intro">Escolher um vinho pode parecer um desafio, mas algumas diretrizes ajudam a tomar a decisão certa:</p>
    </div>

    <div class="dicas-tipos">
        <div class="tipo-vinho tinto">
            <img src="images/vinhot.png" alt="Vinho Tinto">
            <div class="info">
                <h3>Tintos</h3>
                <p>Encorpados e intensos. Ideais para carnes vermelhas e pratos robustos.</p>
            </div>
        </div>
        <div class="tipo-vinho branco">
            <img src="images/vinhob.png" alt="Vinho Branco">
            <div class="info">
                <h3>Brancos</h3>
                <p>Refrescantes e leves. Perfeitos para frutos do mar e pratos suaves.</p>
            </div>
        </div>
        <div class="tipo-vinho rose">
            <img src="images/vinhor.png" alt="Vinho Rosé">
            <div class="info">
                <h3>Rosés</h3>
                <p>Versáteis. Combinam com carnes brancas e petiscos.</p>
            </div>
        </div>
        <div class="tipo-vinho espumante">
            <img src="images/vinhoe.png" alt="Espumante">
            <div class="info">
                <h3>Espumantes</h3>
                <p>Leves e festivos. Para momentos de celebração e pratos delicados.</p>
            </div>
        </div>
    </div>


    <div class="secao-dicas">
        <h2>Harmonização de Vinhos</h2>
        <p>Uma boa harmonização realça os sabores tanto do prato quanto do vinho. Aqui estão algumas combinações clássicas:</p>
        <ul class="harmonizacao-lista">
            <li><strong>Carnes Vermelhas:</strong> Tintos como Cabernet Sauvignon, Malbec e Syrah.</li>
            <li><strong>Massas e Risotos:</strong> Tintos médios como Merlot e Pinot Noir.</li>
            <li><strong>Peixes e Frutos do Mar:</strong> Brancos como Sauvignon Blanc e Chardonnay.</li>
            <li><strong>Queijos:</strong> Queijos suaves combinam com brancos e espumantes. Fortes, com tintos encorpados.</li>
            <li><strong>Sobremesas:</strong> Vinhos como Porto, Moscatel e colheitas tardias.</li>
        </ul>
        <p class="destaque-dica">Dica: Harmonize por contraste (doce + ácido) ou semelhança (leve + leve).</p>
    </div>

    <div class="secao-dicas">
        <h2>Como Servir e Armazenar</h2>
        <div class="tabela-temperaturas">
            <div class="bloco">
                <h3>16ºC - 18ºC</h3>
                <p>Tintos Encorpados</p>
            </div>
            <div class="bloco">
                <h3>14ºC - 16ºC</h3>
                <p>Tintos Leves</p>
            </div>
            <div class="bloco">
                <h3>8ºC - 12ºC</h3>
                <p>Brancos Secos</p>
            </div>
            <div class="bloco">
                <h3>6ºC - 8ºC</h3>
                <p>Espumantes</p>
            </div>
        </div>
    </div>

    <div class="secao-dicas rotulo-dicas">
        <h2>Entendendo os Rótulos</h2>
        <div class="conteudo-rotulo">

            <img class="dica-imagem" src="images/rotulo-vinho.png" alt="Explicação do rótulo de vinho">

            <ul class="harmonizacao-lista">
                <li><strong>Produtor:</strong> Origem e reputação do vinho.</li>
                <li><strong>Nome:</strong> Identificação do vinho no mercado.</li>
                <li><strong>Variedade da uva:</strong> Tipo de uva usada.</li>
                <li><strong>Safra:</strong> Ano da colheita.</li>
                <li><strong>Dulçor:</strong> Seco, meio-seco ou suave.</li>
            </ul>
x        </div>
    </div>

</section>

<jsp:include page="/componentes/organismos/footer.jsp" />
