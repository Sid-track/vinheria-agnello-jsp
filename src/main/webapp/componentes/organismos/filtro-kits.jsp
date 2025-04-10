<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="css/filtro-kits.css" />

<aside class="filtro-kits">
    <h3>Filtrar Kits</h3>

    <div class="filtro-grupo">
        <h4>Tipo de Kit</h4>
        <label><input type="checkbox" /> Tinto</label>
        <label><input type="checkbox" /> Branco</label>
        <label><input type="checkbox" /> Misto</label>
        <label><input type="checkbox" /> Com acessórios</label>
    </div>

    <div class="filtro-grupo">
        <h4>Ocasião</h4>
        <label><input type="checkbox" /> Presente</label>
        <label><input type="checkbox" /> Degustação</label>
        <label><input type="checkbox" /> Casual</label>
        <label><input type="checkbox" /> Datas comemorativas</label>
    </div>

    <div class="filtro-grupo">
        <h4>Faixa de Preço</h4>
        <label><input type="checkbox" /> Até R$100</label>
        <label><input type="checkbox" /> R$100 - R$200</label>
        <label><input type="checkbox" /> Acima de R$200</label>
    </div>
</aside>
