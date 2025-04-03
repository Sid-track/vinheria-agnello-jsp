<link rel="stylesheet" href="css/perfil-info.css">
<div class="perfil-info">
  <img src="${usuario.foto}" alt="${usuario.nome}" class="perfil-foto" />
  <h2>${usuario.nome}</h2>
  <p>Email: ${usuario.email}</p>
  <p>Plano: ${usuario.plano}</p>
  <div class="perfil-acoes">
    <a href="editar-perfil.jsp" class="btn">Editar Perfil</a>
    <a href="logout" class="btn btn-secundario">Sair</a>
  </div>
</div>

