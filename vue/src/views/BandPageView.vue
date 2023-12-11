<template>
    <!-- placeholder comment -->
    <h1 v-if="!isLoaded">LOADING...</h1>
    <v-container fluid v-else>

        <!-- BAND MANAGER SETTINGS -->
        <v-sheet fluid class="ml-5 mr-5 pa-5 rounded-lg" color="#f6ae2d">
            <h2 class="mb-2">Band Manager:</h2>

            <v-dialog width="50%">
                <template v-slot:activator="{ props }">
                    <v-btn v-bind="props" text="Message Followers"> </v-btn>
                </template>

                <template v-slot:default="{ isActive }">
                    <v-card class="rounded-lg pa-10" color="#E9F7F8">
                        <h2 class="mb-5">Compose Message:</h2>
                        <v-text-field label="Message Subject" v-model="messageSubject"></v-text-field>
                        <v-textarea counter clearable label="Message Body"></v-textarea>
                        <v-spacer></v-spacer>
                        <div class="pa-2">
                            <!-- <v-btn block text="Cancel" @click="isActive.value = false" color="secondary"></v-btn> -->
                            <v-btn block text="Send to Followers" @click="isActive.value = false" color="button"></v-btn>
                        </div>
                        <div class="pa-2">
                            <v-btn block text="Cancel" @click="isActive.value = false" color="secondary"></v-btn>
                        </div>
                        {{ newNotification }}
                    </v-card>
                </template>
            </v-dialog>
        </v-sheet>

        <!-- BAND PAGE CONTENT -->
        <section fluid class="ma-5">
            <v-img max-height="30rem" aspect-ratio="16/9" cover :src="band.coverimageurl" class="rounded-lg"></v-img>
        </section>
        <section fluid class="d-flex justify-space-between ma-5">

            <!-- BAND INFO CARD -->
            <v-card class="w-50 pa-10 mr-5 rounded-lg">
                <div class="d-flex justify-space-between ml-2 mr-2">

                    <h2>{{ band.bandName }}</h2>

                    <div v-show="isAuthenticated">
                        <v-btn v-if="!isBandFollowed" @click.stop="followBand()" color="secondary">Follow</v-btn>
                        <v-btn v-if="isBandFollowed" @click.stop="unfollowBand()">Unfollow</v-btn>
                    </div>
                </div>

                <div class="ma-2">
                    <v-chip class="mr-2" v-for="genre in band.genreList" :key="genre.id">{{ genre.name }}</v-chip>
                </div>
                <p class="ma-2">{{ band.description }}</p>
            </v-card>

            <!-- BAND GALLERY CAROUSEL CARD -->
            <v-card fluid class="w-50 rounded-lg">
                <v-carousel cycle hide-delimiters :show-arrows="false" v-on:click="onCarouselClick">
                    <v-carousel-item v-for="image in band.gallery" :key="image.id" :src="image.url" cover></v-carousel-item>
                </v-carousel>
            </v-card>
        </section>
    </v-container>
</template>

<script>
import BandService from '../services/BandService.js';
import FollowerService from '../services/FollowerService.js';
import AuthService from '../services/AuthService.js';
import NotificationsService from '../services/NotificationsService';

export default {
    data() {
        return {
            band: {},
            follower: {},
            isLoaded: false,
            userId: null,
            bandId: null,
            messageOverlay: false,
            messageSubject: '',
            messageDescription: '',
            newNotification: {
                // bandId: this.band.id,
                subject: this.newMessageSubject,
                description: this.newMessageDescription
            }
        }
    },
    methods: {

        followBand() {
            console.log("this.follower before following:", this.follower);

            const band = this.band;
            FollowerService.followBand(band)
                .then(response => {
                    if (response) {
                        this.$store.commit('FOLLOW_BAND', band.id);
                        console.log("State after following:", this.$store.state);
                        console.log("Is band followed after following:", this.$store.getters.isBandFollowed(this.band.id));
                    }
                    // console.log("this.follower after following:", this.follower);
                    // console.log("this.follower.following:", this.follower.following);
                })
                .catch(error => {
                    console.log(error);
                });
            // .finally(() => {
            //     console.log("this.follower after unfollowing and checking status:", this.follower);
            //     console.log("this.follower.following after unfollowing and checking status:", this.follower.following);
            // });

        },
        unfollowBand() {
            console.log("this.follower before unfollowing:", this.follower);

            const band = this.band;
            FollowerService.unfollowBand(band)
                .then(response => {
                    this.$store.commit('UNFOLLOW_BAND', band);
                    console.log("this.follower after unfollowing:", this.follower);
                    console.log("this.follower.following:", this.follower.following);
                })
                .catch(error => {
                    console.log(error);
                })
                .finally(() => {
                    this.checkFollowingStatus();
                    console.log("this.follower after unfollowing and checking status:", this.follower);
                    console.log("this.follower.following after unfollowing and checking status:", this.follower.following);
                });
        },
        checkFollowingStatus() {
            const isFollowing = this.$store.getters.isBandFollowed(this.band.id);
            console.log("Is band followed:", isFollowing)
        },
        onCarouselClick() {
            this.$router.push(`/band/${this.$route.params.id}/gallery`);
        },
        // sendBandNotification(notification) {
        //     NotificationsService.sendBandNotification(this.newNotification)
        //         .then(response => {
        //             console.log(this.newNotification)
        //         })
        // }
    },
    created() {
        const id = this.$route.params.id;
        BandService.getBandById(id)
            .then(response => {
                this.band = response.data;
                this.isLoaded = true;
                console.log("band Data", response.data);
            });

        // FollowerService.getFollowerById(id)
        //     .then(following => {
        //         this.follower.following = following;
        //         this.userId = this.follower.userId;
        //         this.checkFollowingStatus();
        //         console.log("follower Data", following.data);
        //         console.log("this.follower after getting follower data:", this.follower);
        //         console.log("this.follower.following after getting follower data:", this.follower.following);
        //     })
        //     // TODO: lets look at this error
        //     .catch(error => {
        //         console.log("not sure how to deal with this yet");
        //         console.error(error);
        //     });
    },

    computed: {
        isAuthenticated() {
            return this.$store.state.token !== "";
        },
        isBandFollowed() {
            return this.$store.state.followingBands.includes(this.bandId);
        }
    }


}
</script>

<style scoped></style>