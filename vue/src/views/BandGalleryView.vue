<template>
    <v-container v-if="!isLoading" class="d-flex justify-center align-center h-screen mt-n16">
        <v-progress-circular color="primary" indeterminate :size="93" :width="12"></v-progress-circular>
    </v-container>
    <v-container v-else>
        <v-btn class="ml-10 mt-5" color="secondary" @click="$router.go(-1)" prepend-icon="mdi-arrow-left">Back to
            Band</v-btn>
        <div id="page-background" class="pa-10">
            <v-row>
                <v-col v-for="image in images" :key="image.id" class="d-flex child-flex" cols="3">
                    <PolaroidComponent class="h-100 w-100" :images="image.url" />
                    <template v-slot:placeholder>
                        <v-row class=" fill-height ma-0" align="center" justify="center">
                            <v-progress-circular indeterminate color="grey-lighten-5"></v-progress-circular>
                        </v-row>
                    </template>
                </v-col>
            </v-row>
        </div>
    </v-container>
</template>

<script>
import PolaroidComponent from '../components/PolaroidComponent.vue'
import BandService from '../services/BandService';

import { useTheme } from 'vuetify'

export default {
    data() {
        return {
            images: [],
            isLoading: false,
        }
    },
    components: {
        PolaroidComponent
    },
    created() {
        const id = this.$route.params.id;
        BandService.getBandById(id)
            .then(response => {
                this.images = response.data.gallery;
                this.isLoading = true;
                // console.log(response.data, this);
            });
    }
}
</script>

<style scoped></style>