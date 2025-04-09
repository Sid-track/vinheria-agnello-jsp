<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="css/filtro-loja.css" />

<aside class="filtro-loja">
  <h3>Compre por categoria</h3>

  <div class="grupo-filtro">
    <button class="titulo-grupo">Tipo de vinho ▼</button>
    <ul class="opcoes">
      <li><input type="checkbox" name="tipo" value="Tintos"> Tintos</li>
      <li><input type="checkbox" name="tipo" value="Brancos"> Brancos</li>
      <li><input type="checkbox" name="tipo" value="Rosés"> Rosés</li>
      <li><input type="checkbox" name="tipo" value="Espumantes"> Espumantes</li>
    </ul>
  </div>

  <div class="grupo-filtro">
    <button class="titulo-grupo">Ocasião ▼</button>
    <ul class="opcoes">
      <li><input type="checkbox" name="ocasiao" value="Presentear"> Para presentear</li>
      <li><input type="checkbox" name="ocasiao" value="Colecionadores"> Para colecionadores</li>
      <li><input type="checkbox" name="ocasiao" value="Jantar"> Para um jantar especial</li>
      <li><input type="checkbox" name="ocasiao" value="Dia a dia"> Para o dia a dia</li>
    </ul>
  </div>

  <div class="grupo-filtro">
    <button class="titulo-grupo">Origem e Região ▼</button>
    <ul class="opcoes">
      <li><input type="checkbox" name="regiao" value="Nacionais"> Vinhos Nacionais 🇧🇷</li>
      <li><input type="checkbox" name="regiao" value="Italianos"> Vinhos Italianos 🇮🇹</li>
      <li><input type="checkbox" name="regiao" value="Franceses"> Vinhos Franceses 🇫🇷</li>
      <li><input type="checkbox" name="regiao" value="Outros"> Outras Regiões do Mundo 🌍</li>
    </ul>
  </div>

  <div class="grupo-filtro">
    <button class="titulo-grupo">Harmonização ▼</button>
    <ul class="opcoes">
      <li><input type="checkbox" name="harmonizacao" value="Carnes"> Com carnes vermelhas</li>
      <li><input type="checkbox" name="harmonizacao" value="Massas"> Com massas</li>
      <li><input type="checkbox" name="harmonizacao" value="Queijos"> Com queijos</li>
      <li><input type="checkbox" name="harmonizacao" value="Sobremesas"> Para sobremesas</li>
    </ul>
  </div>
</aside>
