<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h2>Testando JSTL</h2>

<c:set var="lista" value="${['uva', 'vinho', 'rolha']}" />

<ul>
    <c:forEach var="item" items="${lista}">
        <li>${item}</li>
    </c:forEach>
</ul>
