<template>
  <div class="msgbox">
    <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
    {{msg}}
  </div>
</template>

<script>
export default {
  name: "Mensagem",
  props: {
      msg: String,
  }
};
</script>

<style scoped>
.msgbox {
margin: auto;
padding: 20px;
width: 400px;
min-height: 40px;
border-left: #323031 solid 8px;
background-color: #FFC857;
box-shadow: 1px 4px 4px #555;
transition: .5s;
-webkit-animation: fadeIn 1s;
animation: fadeIn 1s;
position: fixed;
z-index: 1;
left: 0;
top: 0;
left: 50%;
transform: translatex(-50%);
overflow: auto;
display: block;
}

.closebtn {
  margin-left: 15px;
  color: #323031;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

.closebtn:hover {
  color: white;
}

@-webkit-keyframes fadeIn {
  from {opacity: 0;}
  to {opacity: 1;}
}

@keyframes fadeIn {
  from {opacity: 0;}
  to {opacity:1 ;}
}
</style>