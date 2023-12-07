<template>
    <h1 v-if="!isLoaded">LOADING...</h1>

    <v-sheet v-else class="d-flex justify-center align-center h-screen mt-n16 flex-column">
        <!-- <v-sheet v-else> -->
        <h1>Band Search</h1>
        <v-sheet rounded class="d-flex justify-center align-center flex-column w-50" elevation="4">
            <v-btn-toggle mandatory v-model="toggle" color="#0081a7" divided class="ma-5 w-100 d-flex justify-center">
                <v-btn border class="w-25" @click.stop="searchQuery = ''">Band</v-btn>
                <v-btn border class="w-25" @click.stop="searchQuery = ''">Genre</v-btn>
            </v-btn-toggle>

            <v-autocomplete clearable v-if="toggle === 0" :items="bandsList" class="w-75" prepend-inner-icon="mdi-magnify"
                v-model="searchQuery">SEARCH
                BAR</v-autocomplete>
            <v-autocomplete clearable v-else-if="toggle === 1" :items="genresList" class="w-75"
                prepend-inner-icon="mdi-magnify" v-model="searchQuery">SEARCH
                BAR</v-autocomplete>
            <v-btn class="ma-10 w-50" color="#00afb9" @click.stop="testfilter">SEARCH</v-btn>
        </v-sheet>
        <div>
            <v-row>
                <!-- {{ bandsList }} -->
                {{ searchResults }}
                <!-- {{ searchQuery }} -->
                <v-col v-for="item in searchResults" :key="item.div" class="d-flex child-flex" cols="3">
                    <PolaroidComponent class="h-100 w-100" :images="item.coverimageurl" />
                    <template v-slot:placeholder>
                        <v-row class=" fill-height ma-0" align="center" justify="center">
                            <v-progress-circular indeterminate color="grey-lighten-5"></v-progress-circular>
                        </v-row>
                    </template>
                </v-col>
            </v-row>
        </div>
    </v-sheet>
</template>

<script>
import BandService from '../services/BandService';
import PolaroidComponent from '../components/PolaroidComponent.vue';
export default {
    data() {
        return {
            toggle: 0,
            bandsList: [],
            genresList: [],
            searchQuery: '',
            searchResults: [],
            images: [],
            isLoaded: false,
        };
    },
    components: [
        PolaroidComponent
    ],
    methods: {
        testfilter() {
            this.searchResults = [];
            if (this.toggle === 0) {
                this.searchResults = this.bandsList.filter(name => name.bandName == this.searchQuery);
            }

        },
        showSearchResults() {
            this.searchResults = [];
            if (this.toggle === 0) {
                BandService.getBandsByName(this.searchQuery)
                    .then(response => {
                        const searchData = response.data;
                        searchData.sort((a, b) => a.bandName.localeCompare(b.bandName));
                        searchData.forEach(element => {
                            this.searchResults.push(element)
                            this.images.push(element.coverimageurl)
                        })
                    })
            }
            if (this.toggle === 1) {
                BandService.getBandsByGenre(this.searchQuery)
                    .then(response => {
                        const searchData = response.data;
                        searchData.sort((a, b) => a.bandName.localeCompare(b.bandName));
                        searchData.forEach(element => {
                            this.searchResults.push(element)
                            this.images.push(element.coverimageurl)
                        })
                    })
            }
        }
    },
    created() {
        BandService.getAllGenres()
            .then(response => {
                const genreData = response.data;
                genreData.sort((a, b) => a.name.localeCompare(b.name));
                genreData.forEach(element => {
                    this.genresList.push(element.name);
                });
                this.isLoaded = true;
            });
        BandService.getAllBands()
            .then(response => {
                const bandData = response.data;
                bandData.sort((a, b) => a.bandName.localeCompare(b.bandName));
                bandData.forEach(element => {
                    this.bandsList.push(element.bandName);
                });
                this.isLoaded = true;
            });
    },
    components: { PolaroidComponent }
}
</script>

<style scoped></style>