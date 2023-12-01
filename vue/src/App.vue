<template>
  <v-app>
    <v-container>
      <v-app-bar :elevation="2">
        <v-app-bar-nav-icon />Fan-Band Connector</v-app-bar>
    </v-container>

    <div id="capstone-app">
      <!-- <div id="nav">
        <router-link v-bind:to="{ name: 'home' }">Home</router-link>&nbsp;|&nbsp;
        <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
      </div> -->
      <router-view />
    </div>

  </v-app>
</template>

<style scoped>
#capstone-app {
  margin-top: 3rem;
}
</style>