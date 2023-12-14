<template>
    <v-container v-if="isLoading" class="d-flex justify-center align-center h-screen mt-n16 pa-0 ma-0">
        <v-progress-circular color="primary" indeterminate :size="93" :width="12"></v-progress-circular>
    </v-container>

    <v-container v-else id="page" fluid full-height class="fill-height d-flex flex-row flex-nowrap pa-0 ma-0" color="transparent">

        <v-sheet class="ma-0 w-25 h-100" color="transparent">
            <v-virtual-scroll :items="!filterByBandsActive ? notifications : filteredNotifications" v-model="notifications"
                min-height="100%" max-height="100">
                <template v-slot:default="{ item }">
                    <v-list-item :title="messageForBandName(item.bandId) + ': ' + item.subject"
                        :subtitle="item.dateAndTime + ': ' + item.description" lines="three"
                        @click="selectMessage(item.id, item.bandId)">
                    </v-list-item>
                    <v-divider></v-divider>
                </template>
            </v-virtual-scroll>
        </v-sheet>

        <v-sheet id="msg-ctn" class="w-75 h-100" color="error">

            <v-sheet class="d-flex align-center justify-start space-between pa-9" height="10%" color="#f26419">
                <h2 class="mr-5">Filter Notifications: </h2>
                <v-btn-toggle border v-model="toggle" divided color="secondary">
                    <!-- DESCENDING BUTTON-->
                    <v-btn @click="sortMessagesDateDescending">Date Descending</v-btn>

                    <!-- ASCENDING BUTTON -->
                    <v-btn @click="sortMessagesDateAscending">Date Ascending</v-btn>

                    <!-- BY BAND BUTTON -->
                    <v-btn @click="artistFilter = true">By Band</v-btn>

                </v-btn-toggle>
                <v-select bg-color="white" hide-details @update:menu="sortMessagesBySelectedBand()" base-color="secondary"
                    :items="usersBands" variant="solo-filled" v-model="bandFilterQuery"
                    class="ml-5 text-md-center rounded-xl" hide-selected persistent-placeholder="Select A Band"
                    label="Filter By Band" :disabled="artistFilter === false">Band
                    Filter</v-select>
            </v-sheet>

            <v-container class="pa-10">
                <div v-show="!isMessageSelected"></div>
                <div v-show="isMessageSelected">
                    <h2>{{ selectedMessage[0].dateAndTime }}</h2>
                    <h1>{{ selectedBand[0].bandName }}: {{ selectedMessage[0].subject }}</h1>
                    <p>{{ selectedMessage[0].description }}</p>

                </div>
            </v-container>
        </v-sheet>

    </v-container>
</template>

<script>
import NotificationsService from '../services/NotificationsService'
import BandService from '../services/BandService';
import FollowerService from '../services/FollowerService';

export default {
    data() {
        return {
            artistFilter: false,
            filterByBandsActive: false,
            filteredNotifications: [],
            isLoading: true,
            isMessageSelected: false,
            notifications: [],
            selectedMessage: [-1],
            selectedBand: [-1],
            usersBands: [],
            searchBands: [],
            bandFilterQuery: '',
            bands: [],
            toggle: 0
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

            });
        FollowerService.getUsersFollowers(this.$store.state.user.id)
            .then(response => {
                const data = response.data;
                data.forEach(element => {
                    this.usersBands.push(element.bandName)
                    // this.bandFilterQuery = element.bandName
                });
            });
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
        },
        sortMessagesDateAscending() {
            this.artistFilter = false;
            this.bandFilterQuery = '';
            this.filterByBandsActive = false;
            this.notifications.sort((a, b) => a.dateAndTime.localeCompare(b.dateAndTime));
        },
        sortMessagesDateDescending() {
            this.artistFilter = false;
            this.bandFilterQuery = '';
            this.filterByBandsActive = false;
            this.notifications.sort((a, b) => b.dateAndTime.localeCompare(a.dateAndTime));
        },
        sortMessagesBySelectedBand() {
            if (this.bandFilterQuery === '') {
                this.filteredNotifications = this.notifications
            } else {
                this.filteredNotifications = this.notifications.filter((element) => element.bandName == this.bandFilterQuery);
                this.filterByBandsActive = true;
            }
        }
    },
}
</script>

<style scoped>
    .v-virtual-scroll::-webkit-scrollbar {
        background-color:rgb(93, 116, 116, 0.3);
        width: 0.75rem;
        transition: width, 2s;
    }

 


    .v-virtual-scroll::-webkit-scrollbar-thumb {
        background-color: rgba(255, 255, 255, 0.15);
        border-radius: 11px;
        border: 0.15rem solid transparent;
        background-clip: content-box;
    }

    .v-virtual-scroll:hover::-webkit-scrollbar-thumb {
        background-color: rgba(255, 255, 255, 0.3);
        border-radius: 11px;
        border: 0.15rem solid transparent;
        background-clip: content-box;
    }

    .v-virtual-scroll:hover::-webkit-scrollbar-thumb:hover {
        background-color: rgba(255, 255, 255, 0.4);

    }

    .v-virtual-scroll {
        /* background: linear-gradient(180deg, rgba(0,129,167,0.2) 0%, rgba(0,175,185,0.2) 20%, rgba(0,175,185,0.2) 100%);*/
        background-color: rgba(209, 188, 227, 0.5);

        box-shadow: 0.1rem 0rem 1.3rem 0.2rem rgba(0,0,0, 0.1);
    }

    #page{
        background: linear-gradient(-45deg, #00AFB9, #D1BCE3, #F6AE2D);
        background-size: 400% 400%;
        background-position: 50%, 50%;
    }

    #msg-ctn {
        background-color: transparent !important;
    }

    .v-list-item {
        background-color: rgba(255, 255, 255, 0.25);
    }
</style>