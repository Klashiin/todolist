<template>
  <div class="content">
    <h1>SOBRE O APP</h1>
    <p>Olá, esse é meu projeto de um app de lista de tarefas (todolist).</p>
    <p>Esse projeto foi feito para treinar Vue.js e foi altamente inspirado pelo<a href="https://www.youtube.com/watch?v=wsAQQioPIJs&list=PLnDvRpP8BnezDglaAvtWgQXzsOmXUuRHL&index=1">curso de Vue 3 do Matheus Battisti</a></p>
    <p>A ideia original era criar um app simples que fizesse todas as ações CRUD com um backend "fake".</p>
    <p>No app, é possível:</p>
    <ul>
      <li>Ler conteúdo do DB através da lista de tarefas;</li>
      <li>Criar novas tarefas usando o form submit;</li>
      <li>Alterar o conteúdo das tarefas usando os botões de marcar/desmarcar;</li>
      <li>Remover tarefas usando o botão de remover;</li>
    </ul>
  </div>
</template>

<style scoped>
p {
  margin: 10px;
  font-weight: bold;
}

a {
  color: #db3a34;
  text-decoration: none;
  transition: 0.5s;
  margin: 14px;
}

a:visited {
  color: #084C61;
}

a:hover {
  color: #323031;
}
</style>