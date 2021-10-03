<template>
  <Navbar :logo="_logo" :desc="_desc" />
  <router-view class="content" />
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
}

.content {
  text-align: center;
  color: #084C61;
  margin-bottom: 500px;
}

a {
  color: #ffc857;
  text-decoration: none;
  transition: 250ms;
}

a:visited {
  color: #db3a34;
}

a:hover {
  color: #ffff;
}
</style>