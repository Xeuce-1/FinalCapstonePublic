<template>
    <h1 v-if="!isLoaded">LOADING...</h1>
    <div v-else id="page-background" class="pa-10">
        <v-row>
            <v-col v-for="image in galleryImages" :key="image.id" class="d-flex child-flex" cols="3">
                <PolaroidComponent class="h-100 w-100" :galleryImages="image.url" />
                <template v-slot:placeholder>
                    <v-row class=" fill-height ma-0" align="center" justify="center">
                        <v-progress-circular indeterminate color="grey-lighten-5"></v-progress-circular>
                    </v-row>
                </template>
            </v-col>
        </v-row>
    </div>
</template>

<script>
import PolaroidComponent from '../components/PolaroidComponent.vue'
import BandService from '../services/BandService';

export default {
    data() {
        return {
            galleryImages: [],
            isLoaded: false,
        }
    },
    components: {
        PolaroidComponent
    },
    created() {
        const id = this.$route.params.id;
        BandService.getBandById(id)
            .then(response => {
                this.galleryImages = response.data.gallery;
                this.isLoaded = true;
                console.log(response.data, this);
            });
    }
}
</script>

<style scoped>
#page-background {
    background-color: #a8a5a5;
}
</style>