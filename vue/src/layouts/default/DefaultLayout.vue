<template>
    <v-app>
        <DefaultAppBar />
        <DefaultView class="container" />
    </v-app>
</template>

<script setup>
import DefaultAppBar from './DefaultAppBar.vue'
import DefaultView from './DefaultView.vue'
</script>
<style>
.container {
    background: rgb(187, 239, 255);
    background: linear-gradient(36deg, rgba(187, 239, 255, 1) 0%, rgba(217, 200, 232, 1) 100%);
}
</style>