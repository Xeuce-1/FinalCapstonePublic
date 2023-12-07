<template>
    <h1 v-if="!isLoaded">LOADING...</h1>

    <v-sheet v-else class="d-flex justify-center align-center h-screen mt-n16 flex-column">
        <h1>Band Search</h1>
        <v-sheet rounded class="d-flex justify-center align-center flex-column w-50" elevation="4">
            <v-btn-toggle v-model="toggle" color="#0081a7" divided class="ma-5 w-100 d-flex justify-center">
                <v-btn border class="w-25">Band</v-btn>
                <v-btn border class="w-25">Genre</v-btn>
            </v-btn-toggle>

            <v-autocomplete clearable v-if="toggle === 0" :items="bandsList" class="w-75"
                prepend-inner-icon="mdi-magnify">SEARCH
                BAR</v-autocomplete>
            <v-autocomplete clearable v-else-if="toggle === 1" :items="genresList" class="w-75"
                prepend-inner-icon="mdi-magnify">SEARCH
                BAR</v-autocomplete>

            <v-btn class="ma-10 w-50" color="#00afb9">SEARCH</v-btn>
        </v-sheet>
    </v-sheet>
</template>

<script>
import BandService from '../services/BandService';
export default {
    data() {
        return {
            toggle: 0,
            bandsList: [],
            genresList: [],


            searchItems: [],
            searchResults: [],
            searchQuery: '',
            isLoaded: false
        }
    },
    methods: {
        getSearchItems() {
            if (this.toggle === 1) {
                this.searchItems = this.genresList;
            }
        }
    },
    created() {
        BandService.getAllGenres()
            .then(response => {
                const genreData = response.data;
                genreData.sort((a, b) => a.name.localeCompare(b.name))
                genreData.forEach(element => {
                    this.genresList.push(element.name);
                })
                this.isLoaded = true;
            });
        BandService.getAllBands()
            .then(response => {
                const bandData = response.data;
                bandData.sort((a, b) => a.bandName.localeCompare(b.bandName))
                bandData.forEach(element => {
                    this.bandsList.push(element.bandName);
                })
                this.isLoaded = true;
            });

    }
}
</script>

<style scoped></style>