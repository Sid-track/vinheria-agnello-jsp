<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/componentes/organismos/template.jsp" %>

<link rel="stylesheet" href="css/perfil.css">
<link rel="stylesheet" href="css/perfil_info.css">

<h1 class="titulo-pagina">Meu Perfil</h1>

<div class="perfil-container">
    <jsp:include page="/componentes/moleculas/perfil_info.jsp" />
</div>
<jsp:include page="/componentes/organismos/footer.jsp" />
</main>
</div>
