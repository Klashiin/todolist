<template>
  <div class="content">
    <h1>To Do List</h1>
    <Lista />
  </div>
</template>

<script>
import Lista from '../components/Lista.vue'

export default {
  name: 'Home',
  components: {
    Lista
  }
}
</script>
