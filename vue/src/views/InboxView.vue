<template>
    <v-navigation-drawer color="secondary">
        <v-list>
            <v-list-item title="Navigation drawer"></v-list-item>
        </v-list>
    </v-navigation-drawer>

    <v-main class="d-flex align-center justify-center" style="min-height: 300px;">

    </v-main>
</template>

<script>
import NotificationsService from '../services/NotificationsService'

export default {
    data() {
        return {
            notifications: [],
        }
    }
}
</script>

<style scoped></style>