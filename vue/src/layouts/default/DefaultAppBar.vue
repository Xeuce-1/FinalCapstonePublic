<template>
    <v-app-bar color="primary">
        <v-app-bar-title>
            <!-- <v-icon icon="mdi-menu" @click.stop="drawer = !drawer" /> -->
            BAND IT
        </v-app-bar-title>

        <template v-slot:append>
            <v-btn icon="mdi-magnify" @click="toSearchPage" title="Search"></v-btn>
            <v-btn v-show="isAuthenticated" icon="mdi-hammer-screwdriver" @click="toCreateABand" title="Add A Band"></v-btn>
            <v-btn v-show="isAuthenticated" icon="mdi-home-account" title="Home" @click="toHomePage"></v-btn>
            <v-btn v-show="isAuthenticated" icon="mdi-inbox" @click="toUserInbox" title="Inbox"></v-btn>
            <v-btn v-show="!isAuthenticated" icon="mdi-login" @click="toLoginPage" title="Login"></v-btn>
            <v-btn v-show="isAuthenticated" icon="mdi-logout" @click="toLogoutPage" title="Logout"></v-btn>
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
        },
        toCreateABand() {
            this.$router.push({ name: 'createBandPage' })
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

.v-icon {
    color:aliceblue;
    transition: color, 0.3s;
}

.v-icon:hover {
    color: rgb(242, 100, 25);
}
</style>
