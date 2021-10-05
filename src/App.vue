<template>
  <Navbar :logo="_logo" :desc="_desc" />
  <router-view />
  <Footer />
</template>

<script>
import Navbar from "./components/Navbar.vue";
import Footer from "./components/Footer.vue";

export default {
  name: "App",
  components: {
    Navbar,
    Footer,
  },
  data() {
    return {
      _logo: "/img/logo.png",
      _desc: "To Do List",
    };
  },
};
</script>

<style>
* {
  font-family: Helvetica, sans-serif;
  margin: 0px;
  padding: 0px;
  box-sizing: border-box;
}

.content {
  margin: 20px 0px 20px 0px;
  color: #323031;
  min-height: 310px;
  text-align: center;
}

a {
  color: #ffc857;
  text-decoration: none;
  transition: 0.5s;
  margin: 14px;
}

a:visited {
  color: #db3a34;
}

a:hover {
  color: #ffff;
}

.botao {
  margin: 2px;
  padding: 2px;
  cursor: pointer;
  border: 2px solid #323031;
  background-color: #323031;
  color: #ffc857;
  font-weight: bold;
  font-size: 16px;
  transition: 0.5s;
}

.botao:hover {
  background-color: transparent;
  color: #323031;
}
</style>