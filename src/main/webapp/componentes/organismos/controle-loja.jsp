<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="css/controle-loja.css">

<div class="controle-loja">

    <!-- Breadcrumbs -->
    <nav class="breadcrumbs">
        <a href="home">Início</a> &gt;
        <span>Loja</span>
    </nav>

    <div class="controle-barra">
        <!-- Barra de busca -->
        <form action="loja" method="get" class="busca-form">
            <input type="text" name="busca" placeholder="Buscar produtos..." />
            <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
        </form>

        <!-- Ordenação -->
        <form action="loja" method="get" class="ordenar-form">
            <label for="ordenar">Ordenar por:</label>
            <select name="ordenar" id="ordenar">
                <option value="relevancia">Relevância</option>
                <option value="preco-asc">Preço: menor para maior</option>
                <option value="preco-desc">Preço: maior para menor</option>
                <option value="nome">Nome</option>
            </select>
        </form>
    </div>

    <!-- Contador de resultados -->
    <p class="contador">Mostrando 1–8 de 24 produtos</p> <!-- isso pode vir dinamicamente depois -->
</div>
