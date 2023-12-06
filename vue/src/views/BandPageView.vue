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
                    <v-btn class="mr-10" @click="toggleFollow(userId)">{{ follower.following ? 'Unfollow' : 'Follow'
                    }}</v-btn>
                </div>
                <div class="ma-2">
                    <v-chip variant="elevated">Genre 1</v-chip>
                </div>
                <p class="ma-2">{{ band.descripton }}</p>
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
        }
    },


    methods: {
        toggleFollow(userId) {
            const bandId = this.band.id;
            if (this.$store.getters.isBandFollowed(bandId)) {
                FollowerService.unfollowBand(bandId)
                    .then(response => {
                        this.$store.commit('UNFOLLOW_BAND', bandId);
                    })
                    // TODO: lets look at this error
                    .catch(error => {
                        console.log(error);
                    });
            } else {
                FollowerService.followBand(userId, bandId)
                    .then(response => {
                        this.$store.commit('FOLLOW_BAND', bandId);
                    })
                    // TODO: lets look at this error
                    .catch(error => {
                        console.log(error);
                    });
            }
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
                console.log("follower Data", response.data);
            })
            // TODO: lets look at this error
            .catch(error => {
                console.log("not sure how to deal with this yet");
            });
    }


}
</script>

<style scoped>
.carousel-clicker:hover {
    cursor: pointer !important;
}
</style>