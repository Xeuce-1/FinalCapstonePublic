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
                    <v-btn class="mr-10">Follow/Unfollow</v-btn>
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

export default {
    data() {
        return {
            band: {},
            isLoaded: false,
        }
    },


    methods: {
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
                console.log(response.data, this);
            });
    }


}
</script>

<style scoped>
.carousel-clicker:hover {
    cursor: pointer !important;
}
</style>