<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<link rel="stylesheet" href="css/menu.css">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap" rel="stylesheet">

<aside class="sidebar" id="sidebar">
    <div class="logo">
        <img src="${pageContext.request.contextPath}/images/logo-branco.png" alt="Logo Vinheria Agnello" /
    </div>
    <nav>
        <ul>
            <li><a href="${pageContext.request.contextPath}/home"><i class="fa-solid fa-house"></i> Home</a></li>
            <li><a href="${pageContext.request.contextPath}/loja"><i class="fa-solid fa-wine-bottle"></i> Loja</a></li>
            <li><a href="${pageContext.request.contextPath}/clube"><i class="fa-solid fa-star"></i> Clube</a></li>
            <li><a href="${pageContext.request.contextPath}/kits"><i class="fa-solid fa-gift"></i> Kits</a></li>
            <li><a href="${pageContext.request.contextPath}/produtores"><i class="fa-solid fa-people-group"></i> Produtores</a></li>
            <li><a href="${pageContext.request.contextPath}/perfil"><i class="fa-solid fa-user"></i> Perfil</a></li>
            <li><a href="${pageContext.request.contextPath}/dicas"><i class="fa-solid fa-lightbulb"></i> Dicas</a></li>
            <li><a href="${pageContext.request.contextPath}/sobre.jsp"><i class="fa-solid fa-info-circle"></i> Sobre</a></li>
            <li><a href="${pageContext.request.contextPath}/faq"><i class="fa-solid fa-question"></i> FAQ</a></li>
            <li><a href="${pageContext.request.contextPath}/contato.jsp"><i class="fa-solid fa-envelope"></i> Contato</a></li>
        </ul>
    </nav>
</aside>
