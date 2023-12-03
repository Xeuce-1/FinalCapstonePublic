<template>
    <v-app-bar flat border>
        <v-app-bar-title>
            <v-icon icon="mdi-menu" @click.stop="drawer = !drawer" />
            FAN-BAND CONNECTOR
        </v-app-bar-title>
    </v-app-bar>

    <v-navigation-drawer v-model="drawer" border temporary>
        <v-list :items="items"></v-list>
    </v-navigation-drawer>
</template>

<script>
export default {
    data() {
        return {
            drawer: false,
            items: []
        }
    }
}
</script>