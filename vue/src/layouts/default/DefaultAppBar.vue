<template>
    <v-app-bar flat border color="#0081a7">
        <v-app-bar-title>
            <v-icon icon="mdi-menu" @click.stop="drawer = !drawer" />
            FAN-BAND CONNECTOR
        </v-app-bar-title>

        <template v-slot:append>
            <v-btn icon="mdi-unicorn-variant"></v-btn>

            <v-btn v-show="!isAuthenticated" icon="mdi-login" @click.stop="toLoginPage"></v-btn>
            <v-btn v-show="isAuthenticated" icon="mdi-logout" @click.stop="toLogoutPage"></v-btn>

        </template>
    </v-app-bar>


    <!-- NAVIGATION DRAWER -->
    <v-navigation-drawer v-model="drawer" border temporary color="#00afb9">
        <!-- <v-list :items="items"></v-list> -->
        <div class="pa-2">
            <v-btn block>My Bands</v-btn>
        </div>

        <template v-slot:append>
            <div v-show="!isAuthenticated" class="pa-2">
                <v-btn block prepend-icon="mdi-login" color="#f26419" @click.stop="toLoginPage">Login</v-btn>
            </div>
            <div v-show="isAuthenticated" class="pa-2">
                <v-btn block prepend-icon="mdi-logout" color="#f26419" @click.stop="toLogoutPage">Logout</v-btn>
            </div>
        </template>
    </v-navigation-drawer>
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

        }
    },
    computed: {
        isAuthenticated() {
            return this.$store.state.token !== "";
        }
    }
}
</script>