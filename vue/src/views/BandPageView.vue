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
<<<<<<< HEAD
                    <v-btn class="mr-10" @click="toggleFollow(userId)">{{ follower.following ? 'Unfollow' : 'Follow'
                    }}</v-btn>
=======
                    <v-btn class="mr-10">Follow/Unfollow</v-btn>
>>>>>>> 1a5518c2710a0c694318f118f30f35616a656f5b
                </div>
                <div class="ma-2">
                    <v-chip variant="elevated">Genre 1</v-chip>
                </div>
<<<<<<< HEAD
                <p class="ma-2">{{ band.description }}</p>
=======
                <p class="ma-2">{{ band.descripton }}</p>
>>>>>>> 1a5518c2710a0c694318f118f30f35616a656f5b
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
<<<<<<< HEAD
import FollowerService from '../services/FollowerService.js';
import AuthService from '../services/AuthService.js';
=======
>>>>>>> 1a5518c2710a0c694318f118f30f35616a656f5b

export default {
    data() {
        return {
            band: {},
<<<<<<< HEAD
            follower: {},
=======
>>>>>>> 1a5518c2710a0c694318f118f30f35616a656f5b
            isLoaded: false,
        }
    },


    methods: {
<<<<<<< HEAD
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
=======
>>>>>>> 1a5518c2710a0c694318f118f30f35616a656f5b
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
<<<<<<< HEAD
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
=======
                console.log(response.data, this);
>>>>>>> 1a5518c2710a0c694318f118f30f35616a656f5b
            });
    }


}
</script>

<style scoped>
.carousel-clicker:hover {
    cursor: pointer !important;
}
</style>