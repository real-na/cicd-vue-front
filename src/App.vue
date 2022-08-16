<template>
  <ul>
    <li v-for="user in users" :key="user.id">{{ user.name }}</li>
  </ul>
</template>
<script>
import axios from "axios";
export default {
  name: "app",
  data() {
    return {
      users: [],
    };
  },
  mounted() {
    axios.get("http://localhost:3000/api/users").then((res) => {
      this.users = res.data;
    });
  },
};
</script>

<style lang="scss"></style>
