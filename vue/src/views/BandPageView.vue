<template>
    <h1 v-if="!isLoaded">LOADING...</h1>
    <div v-else>
        <section class="ma-10">
            <v-img max-height="30rem" aspect-ratio="16/9" cover :src="band.coverimageurl"></v-img>
        </section>
        <section class="d-flex justify-space-between ma-5">
            <v-card class="w-50 ma-5">
                <div class="d-flex ma-2 justify-space-between">
                    <h2>{{ band.bandName }}</h2>


                    <div v-show="isAuthenticated" class="pa-2">
                        <v-btn v-if="!follower.following" class="mr-10" @click.stop="followBand()">Follow</v-btn>

                        <v-btn v-if="follower.following" class="mr-10" @click.stop="unfollowBand()">Unfollow</v-btn>
                    </div>



                </div>
                <div class="ma-2">
                    <v-chip variant="elevated">Genre 1</v-chip>
                </div>
                <p class="ma-2">{{ band.description }}</p>
            </v-card>
            <v-card class="w-50 ma-5 carousel-clicker">
                <v-carousel cycle hide-delimiters :show-arrows="false" v-on:click="onCarouselClick">
                    <v-carousel-item src="https://cdn.vuetifyjs.com/images/cards/docks.jpg" cover></v-carousel-item>

                    <v-carousel-item src="https://cdn.vuetifyjs.com/images/cards/hotel.jpg" cover></v-carousel-item>

                    <v-carousel-item src="https://cdn.vuetifyjs.com/images/cards/sunshine.jpg" cover></v-carousel-item>
                </v-carousel>

            </v-card>
        </section>
    </div>
</template>

<script>
import BandService from '../services/BandService.js';
import FollowerService from '../services/FollowerService.js';
import AuthService from '../services/AuthService.js';

export default {
    data() {
        return {
            band: {},
            follower: {},
            isLoaded: false,
            userId: null,
        }
    },


    methods: {

        followBand() {
            console.log("this.follower before following:", this.follower);

            const band = this.band;
            FollowerService.followBand(band)
                .then(response => {
                    this.$store.commit('FOLLOW_BAND', band);
                    console.log("this.follower after following:", this.follower);
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


        onCarouselClick() {
            this.$router.push("/band/gallery");
        }
    },
    created() {
        const id = this.$route.params.id;
        BandService.getBandById(id)
            .then(response => {
                this.band = response.data;
                this.isLoaded = true;
                console.log("band Data", response.data);
            });

        FollowerService.getFollowerById(id)
            .then(response => {
                this.follower = response.data;
                this.userId = response.data.userId;
                this.checkFollowingStatus();
                console.log("follower Data", response.data);
                console.log("this.follower after getting follower data:", this.follower);
                console.log("this.follower.following after getting follower data:", this.follower.following);
            })
            // TODO: lets look at this error
            .catch(error => {
                console.log("not sure how to deal with this yet");
                console.error(error);
            });
    },
    checkFollowingStatus() {
        // Add your logic to determine if the user is following the band
        // For example, you can check if the bandId is present in the followingBands array
        const isFollowing = this.$store.state.followingBands.includes(this.band.id);
        this.follower.following = isFollowing;
    },
    computed: {
        isAuthenticated() {
            return this.$store.state.token !== "";
        }
    }


}
</script>

<style scoped>
.carousel-clicker:hover {
    cursor: pointer !important;
}
</style>