<template>
    <v-app-bar color="primary">
        <v-app-bar-title>
            <!-- <v-icon icon="mdi-menu" @click.stop="drawer = !drawer" /> -->
            BAND IT
        </v-app-bar-title>

        <template v-slot:append>
            <v-btn icon="mdi-magnify" @click="toSearchPage"></v-btn>
            <v-btn v-show="isAuthenticated" icon="mdi-home-account" @click="toHomePage"></v-btn>
            <v-btn v-show="isAuthenticated" icon="mdi-inbox" @click="toUserInbox"></v-btn>
            <v-btn v-show="!isAuthenticated" icon="mdi-login" @click="toLoginPage"></v-btn>
            <v-btn v-show="isAuthenticated" icon="mdi-logout" @click="toLogoutPage"></v-btn>

        </template>
    </v-app-bar>
</template>

<script>
export default {
    data() {
        return {
            drawer: false,
            items: ['Login', 'My Bands']
        }
    },
    methods: {
        toLoginPage() {
            this.$router.push({ name: 'login' });
        },
        toLogoutPage() {
            this.$router.push({ name: 'logout' })

        },
        toSearchPage() {
            this.$router.push({ name: 'search' })
        },
        toHomePage() {
            this.$router.push({ name: 'home' })
        },
        toUserInbox() {
            this.$router.push({ name: 'inbox' })
        }
    },
    computed: {
        isAuthenticated() {
            return this.$store.state.token !== "";
        }
    }
}
</script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Permanent+Marker&family=Silkscreen&display=swap');

* {
    font-family: 'Silkscreen', sans-serif;
}
</style>
