<template>
  <Mensagem :boxStyle="_boxStyle" :msg="_msg" v-show="_msg" />
  <div v-for="todo in todos" :key="todo.id">
    <div :class="todo.checked ? 'lista stripped' : 'lista'">
      {{ todo.task }}
    </div>
    <button class="botao" @click="toggleChecked(todo.id, todo)">
      {{ todo.checked ? "Desmarcar" : "Marcar" }}
    </button>
    <button @click="deleteTask(todo.id)" class="botao">Remover</button>
  </div>
  <form @submit="newTask">
    <div class="container">
      <label for="newtask">Adicionar Tarefa:</label>
    </div>
    <div class="container">
      <input type="text" id="newtask" name="newtask" v-model="task" placeholder="Adicionar nova tarefa" />
      <input type="submit" class="botao" value="Add" />
    </div>
  </form>
</template>

<script>
import Mensagem from "./Mensagem.vue"
export default {
  name: "Lista",
  components: {
    Mensagem
  },
  data() {
    return {
      todos: [],
      task: null,
      checked: false,
      _msg: "",
      _boxStyle: ""
    };
  },
  methods: {
    async getTodos() {
      const req = await fetch("https://klashiin-todolist.herokuapp.com/todos");
      const data = await req.json();
      this.todos = data;
    },
    async newTask(e) {
      e.preventDefault();
      const data = {
        task: this.task,
        checked: this.checked,
      };
      const dataJson = JSON.stringify(data);
      const req = await fetch("https://klashiin-todolist.herokuapp.com/todos", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: dataJson,
      });
      const res = await req.json();
      this.task = "";
      this._msg = "Tarefa adicionada com sucesso.";
      this._boxStyle = "new-task-box";
      setTimeout(() => this._msg = "", 4000);
      this.getTodos();
    },
    async deleteTask (id) {
        const req = await fetch(`https://klashiin-todolist.herokuapp.com/todos/${id}`, {
          method: "DELETE"
        }
      );
      const res = await req.json();
      this._msg = "Tarefa removida com sucesso.";
      this._boxStyle = "delete-task-box";
      setTimeout(() => this._msg = "", 4000);
      this.getTodos();
    },
    async toggleChecked (id, todo) {
      const dataJson = JSON.stringify({checked: !todo.checked});
      const req = await fetch(`https://klashiin-todolist.herokuapp.com/todos/${id}`, {
        method: "PATCH",
        headers: { "Content-Type": "application/json"},
        body: dataJson
      });
      const res = await req.json();
      this.getTodos();
    }
  },
  mounted() {
    this.getTodos();
  },
};
</script>

<style scoped>
.lista {
  margin: 10px;
}

.stripped {
  text-decoration: line-through;
}

.container {
    margin: 10px 0px 5px 0px;
}

#newtask {
  padding: 2px;
  font-size: 16px;
}
</style>