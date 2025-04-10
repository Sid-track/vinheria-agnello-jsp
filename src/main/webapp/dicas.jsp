<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/componentes/organismos/template.jsp" %>

<link rel="stylesheet" href="css/dicas.css">

<section class="dicas">
    <div class="dicas-header">
        <h1>Como Escolher o Vinho Certo</h1>
        <p>Escolher um vinho pode parecer um desafio, mas algumas diretrizes ajudam a tomar a decisão certa:</p>
    </div>

    <div class="dicas-tipos">
        <div class="tipo-vinho tinto">
            <img src="images/vinho3.jpg" alt="Vinho Tinto" />
            <div>
                <h2>Tintos</h2>
                <p>Encorpados e intensos. Ideais para carnes vermelhas e pratos robustos.</p>
            </div>
        </div>
        <div class="tipo-vinho branco">
            <img src="images/vinho2.jpg" alt="Vinho Branco" />
            <div>
                <h2>Brancos</h2>
                <p>Refrescantes e leves. Perfeitos para frutos do mar e pratos suaves.</p>
            </div>
        </div>
        <div class="tipo-vinho rose">
            <img src="images/vinho3.jpg" alt="Vinho Rosé" />
            <div>
                <h2>Rosés</h2>
                <p>Versáteis. Combinam tanto com carnes brancas quanto com petiscos.</p>
            </div>
        </div>
        <div class="tipo-vinho espumante">
            <img src="images/vinho2.jpg" alt="Espumante" />
            <div>
                <h2>Espumantes</h2>
                <p>Perfeitos para celebrações e entradas leves.</p>
            </div>
        </div>
    </div>

    <div class="harmonizacao">
        <h2>Harmonização de Vinhos</h2>
        <p>Uma boa harmonização realça os sabores tanto do prato quanto do vinho. Aqui estão algumas combinações clássicas:</p>
        <ul>
            <li><strong>Carnes Vermelhas:</strong> Tintos como Cabernet Sauvignon, Malbec e Syrah.</li>
            <li><strong>Massas e Risotos:</strong> Tintos de médio corpo como Merlot e Pinot Noir.</li>
            <li><strong>Peixes e Frutos do Mar:</strong> Brancos como Sauvignon Blanc e Chardonnay.</li>
            <li><strong>Queijos:</strong> Queijos suaves combinam com brancos e espumantes, os fortes com tintos encorpados.</li>
            <li><strong>Sobremesas:</strong> Vinhos como Porto, Moscatel e colheitas tardias.</li>
        </ul>
        <p class="dica">Dica: Harmonize por contraste (doce + ácido) ou semelhança (corpo leve + prato leve).</p>
    </div>

    <div class="armazenamento">
        <h2>Como Servir e Armazenar</h2>
        <div class="temperaturas">
            <div class="temp">
                <p class="graus">16ºC - 18ºC</p>
                <p>Tintos Encorpados</p>
            </div>
            <div class="temp">
                <p class="graus">14ºC - 16ºC</p>
                <p>Tintos Leves</p>
            </div>
            <div class="temp">
                <p class="graus">8ºC - 12ºC</p>
                <p>Brancos Secos</p>
            </div>
            <div class="temp">
                <p class="graus">6ºC - 8ºC</p>
                <p>Espumantes</p>
            </div>
        </div>
    </div>

    <div class="rotulo">
        <h2>Entendendo os Rótulos</h2>
        <img src="images/rotulo-vinho.jpg" alt="Rótulo de vinho explicativo">
        <ul>
            <li><strong>Produtor:</strong> Origem do vinho.</li>
            <li><strong>Nome:</strong> Identifica o vinho.</li>
            <li><strong>Variedade da uva:</strong> Tipo da uva usada.</li>
            <li><strong>Safra:</strong> Ano da colheita.</li>
            <li><strong>Dulçor:</strong> Seco, suave, meio-seco etc.</li>
        </ul>
    </div>
</section>
    