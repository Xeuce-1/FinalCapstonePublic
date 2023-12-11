<template>
    <v-container fluid class="fill-height d-flex flex-row flex-nowrap pa-0">
        <v-container class="ma-0 w-25 h-100 pa-0">
            <v-virtual-scroll :items="notifications" min-height="100%" max-height="100" item-height="48">
                <template v-slot:default="{ item }">
                    <v-list-item :title="`Employee Name`" :subtitle="`Badge #${item}`">
                        <template v-slot:prepend>
                            <v-icon class="bg-primary">mdi-account</v-icon>
                        </template>

                        <template v-slot:append>
                            <v-btn icon="mdi-pencil" size="x-small" variant="tonal"></v-btn>
                        </template>
                    </v-list-item>
                </template>
            </v-virtual-scroll>
        </v-container>

        <v-container class="w-75 h-100">MAIN BODY</v-container>

    </v-container>
</template>

<script>
import NotificationsService from '../services/NotificationsService'

export default {
    data() {
        return {
            notifications: [1],
        }
    },
    created() {
        NotificationsService.getAllNotificationsForUser()
            .then(response => {
                this.notifications = response.data;
                console.log(this.notifications);
            })
    }
}
</script>

<style scoped>
.test {
    height: 84%;
}
</style>