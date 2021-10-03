<template>
  <div class="nav">
    <div>
      <router-link to="/">
        <img :src="logo" :alt="desc" />
      </router-link>
    </div>
    <div>
      <router-link to="/">Home</router-link> |
      <router-link to="/sobre">Sobre</router-link>
    </div>
  </div>
</template>

<script>
export default {
  name: "Navbar",
  props: {
      logo: String,
      desc: String
  },
};
</script>

<style scoped>
.nav img {
  width: 100px;
  margin: auto;
}

.nav {
  background-color: #323031;
  padding: 15px 50px;
  color: #ffff;
  text-align: left;
}
</style>