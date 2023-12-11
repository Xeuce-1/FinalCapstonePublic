<template>
    <v-container fluid class="fill-height d-flex flex-row flex-nowrap pa-0">
        <v-container class="ma-0 w-25 h-100 pa-0">
            <v-virtual-scroll :items="notifications" min-height="100%" max-height="100" item-height="48"
                v-for="item in notifications" :key="item.id">

                <template v-slot:default="{ item }">
                    <v-list-item :title="item.subject" :subtitle="item.description" lines="three"
                        @click="selectMessage(item.id)">

                        <!-- PREPEND ICON IF WE WANT -->
                        <!-- <template v-slot:prepend> -->
                        <!-- <v-icon class="bg-primary">mdi-account</v-icon> -->
                        <!-- </template> -->

                    </v-list-item>
                    <v-divider></v-divider>
                </template>



            </v-virtual-scroll>
        </v-container>

        <v-container class="w-75 h-100">
            {{ selectedMessage }}
            <h1>{{ selectedMessage.id }}</h1>
        </v-container>

    </v-container>
</template>

<script>
import NotificationsService from '../services/NotificationsService'

export default {
    data() {
        return {
            notifications: [],
            selectedMessage: []
        }
    },
    created() {
        NotificationsService.getAllNotificationsForUser()
            .then(response => {
                this.notifications = response.data;
            });
        console.log(this.notifications);
    },
    methods: {
        selectMessage(id) {
            this.selectedMessage = this.notifications.filter((element) => element.id === id);
        }
    }
}
</script>

<style scoped>
.test {
    height: 84%;
}
</style>