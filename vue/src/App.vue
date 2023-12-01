<template>
  <div id="capstone-app">

    <v-app>
      <v-container>
        <v-app-bar :elevation="2">Fan-Band Connector</v-app-bar>
      </v-container>
    </v-app>

    <div id="nav">
      <router-link v-bind:to="{ name: 'home' }">Home</router-link>&nbsp;|&nbsp;
      <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
    </div>
    <router-view />
  </div>
</template>
