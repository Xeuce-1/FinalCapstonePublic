<template>
    <!-- placeholder comment -->
    <h1 v-if="!isLoaded">LOADING...</h1>
    <div v-else>
        <section class="ma-10">
            <v-img max-height="30rem" aspect-ratio="16/9" cover :src="band.coverimageurl"></v-img>
        </section>
        <section class="d-flex justify-space-between ma-5">
            <v-card class="w-50 ma-5">
                <div class="d-flex ma-2 justify-space-between">
                    <h2>{{ band.bandName }}</h2>
                    <v-btn class="mr-10" @click.stop="toggleFollow()">{{ follower.following ? 'Unfollow' : 'Follow'
                    }}</v-btn>
                </div>
                <div class="ma-2">
                    <v-chip v-for="genre in band.genreList" :key="genre.id">{{ genre.name }}</v-chip>
                </div>
                <p class="ma-2">{{ band.description }}</p>
            </v-card>
            <v-card class="w-50 ma-5 carousel-clicker">
                <v-carousel cycle hide-delimiters :show-arrows="false" v-on:click="onCarouselClick">
                    <v-carousel-item v-for="image in band.gallery" :key="image.id" :src="image.url" cover></v-carousel-item>
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
        toggleFollow() {
            const band = this.band;
            const userId = this.userId;
            if (this.$store.getters.isBandFollowed(band)) {
                FollowerService.unfollowBand(band)
                    .then(response => {
                        this.$store.commit('UNFOLLOW_BAND', band);
                    })
                    // TODO: lets look at this error
                    .catch(error => {
                        console.log(error);
                    });
            } else {
                FollowerService.followBand(band)
                    .then(response => {
                        this.$store.commit('FOLLOW_BAND', band);
                    })
                    // TODO: lets look at this error
                    .catch(error => {
                        console.log(error);
                    });
            }
        },
        onCarouselClick() {
            this.$router.push(`/band/${this.$route.params.id}/gallery`);
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