<template>
    <h1 v-if="!isLoaded">LOADING...</h1>
    <v-sheet v-else class="d-flex justify-center align-center h-screen mt-n16">
        <v-sheet border class="h-50 w-75">
            <v-btn-toggle v-model="toggle" color="#0081a7" divided class="ma-5 w-100">
                <v-btn border>Band</v-btn> <!-- toggle: 0 -->
                <v-btn border>Genre</v-btn>
            </v-btn-toggle>
            <v-autocomplete :items="bandsList" class="ma-10" prepend-inner-icon="mdi-magnify">SEARCH
                BAR</v-autocomplete>
            <v-btn block class="ma-10">SEARCH</v-btn>
        </v-sheet>

    </v-sheet>
</template>

<script>
import BandService from '../services/BandService';
export default {
    data() {
        return {
            toggle: null,
            bandsList: [],
            searchItems: [],
            searchResults: [],
            searchQuery: '',
            isLoaded: false
        }
    },
    methods: {
        getSearchItems() {
            if (toggle === 0) {
                this.searchItems = this.bandsList;
            }
        }
    },
    created() {
        BandService.getAllBands()
            .then(response => {
                this.bandsList = response.data;
                this.isLoaded = true;
            })
    }
}
</script>

<style scoped></style>