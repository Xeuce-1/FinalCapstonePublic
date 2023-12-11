<template>
    <v-container v-if="isLoading" class="d-flex justify-center align-center h-screen mt-n16">
        <v-progress-circular color="primary" indeterminate :size="93" :width="12"></v-progress-circular>
    </v-container>
    <v-container v-else fluid class="fill-height d-flex flex-row flex-nowrap pa-0">
        <v-sheet class="ma-0 w-25 h-100 pa-0" color="secondary">
            <v-virtual-scroll :items="notifications" min-height="100%" max-height="100" item-height="48">
                <template v-slot:default="{ item }">
                    <v-list-item :title="messageForBandName(item.bandId) + ': ' + item.subject"
                        :subtitle="item.dateAndTime + ': ' + item.description" lines="three"
                        @click="selectMessage(item.id, item.bandId)">
                    </v-list-item>
                    <v-divider></v-divider>
                </template>
            </v-virtual-scroll>
        </v-sheet>

        <v-sheet class="w-75 h-100 pa-10" color="#d1bce3">
            <div v-show="!isMessageSelected"></div>
            <div v-show="isMessageSelected">
                <h2>{{ selectedMessage[0].dateAndTime }}</h2>
                <h1>{{ selectedBand[0].bandName }}: {{ selectedMessage[0].subject }}</h1>
                <p>{{ selectedMessage[0].description }}</p>
            </div>
        </v-sheet>

    </v-container>
</template>

<script>
import NotificationsService from '../services/NotificationsService'
import BandService from '../services/BandService';

export default {
    data() {
        return {
            isLoading: true,
            isMessageSelected: false,
            notifications: [],
            selectedMessage: [-1],
            selectedBand: [-1],
            bands: []
        }
    },
    created() {
        NotificationsService.getAllNotificationsForUser()
            .then(response => {
                this.notifications = response.data;
            });
        BandService.getAllBands()
            .then(response => {
                this.bands = response.data;
                this.isLoading = false;
            })
    },
    methods: {
        selectMessage(id, bandId) {
            this.selectedMessage = this.notifications.filter((element) => element.id === id);
            this.selectedBand = this.bands.filter((element) => element.id === bandId);
            this.isMessageSelected = true;
        },
        messageForBandName(bandId) {
            let name = this.bands.filter((element) => element.id == bandId)
            return name[0].bandName;
        }

    }
}
</script>

<style scoped>
.test {
    height: 84%;
}
</style>