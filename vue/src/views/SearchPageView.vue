<template>
    <v-sheet color="transparent">
        <h1 v-if="!isLoaded">LOADING...</h1>

        <v-sheet v-else class="d-flex justify-center align-center flex-column" color="transparent">
            <h1>Band Search</h1>
            <v-sheet rounded class="d-flex justify-center align-center flex-column w-50" elevation="4">
                <v-btn-toggle mandatory v-model="toggle" color="#0081a7" divided class="ma-5 w-100 d-flex justify-center">
                    <v-btn border class="w-25" @click.stop="searchQuery = ''">Band</v-btn>
                    <v-btn border class="w-25" @click.stop="searchQuery = ''">Genre</v-btn>
                </v-btn-toggle>

                <v-autocomplete flat autofocus auto-select-first clearable no-data-text="Band not found."
                    v-if="toggle === 0" :items="bandsNameList" class="w-75" prepend-inner-icon="mdi-magnify"
                    v-model="searchQuery">SEARCH
                    BAR</v-autocomplete>
                <v-autocomplete flat autofocus auto-select-first clearable no-data-text="Genre not found."
                    v-else-if="toggle === 1" :items="genresList" class="w-75" prepend-inner-icon="mdi-magnify"
                    v-model="searchQuery">SEARCH
                    BAR</v-autocomplete>
                <v-btn class="ma-10 w-50" color="button" @click.prevent="showSearchResults">SEARCH</v-btn>
            </v-sheet>
            <div class="w-100 pa-10">
                <v-row>
                    <v-col v-for="item in searchResults" :key="item.id" class="d-flex child-flex" cols="3">
                        <SearchPolaroidComponent cover class="w-100 h-100" :band="item"
                            @click="toSelectedBandPage(item.id)" />
                        <template v-slot:placeholder>
                            <v-row class=" fill-height ma-0" align="center" justify="center">
                                <v-progress-circular indeterminate color="grey-lighten-5"></v-progress-circular>
                            </v-row>
                        </template>
                        <h2 v-show="searchResults === []">Test</h2>
                    </v-col>
                </v-row>
            </div>
        </v-sheet>
    </v-sheet>
</template>

<script>
import BandService from '../services/BandService';
import SearchPolaroidComponent from '../components/SearchPolaroidComponent.vue'

export default {
    data() {
        return {
            toggle: 0,
            bandsNameList: [],
            bandList: [],
            genresList: [],
            searchQuery: '',
            searchResults: [],
            images: [],
            isLoaded: false,
        };
    },
    components: {
        SearchPolaroidComponent
    },
    methods: {
        toSelectedBandPage(bandId) {
            this.$router.push({ name: 'band', params: { id: bandId } })
        },
        showSearchResults() {
            this.searchResults = [];
            if (this.toggle === 0) {
                this.searchResults = this.bandList.filter((element) => element.bandName == this.searchQuery);
            }
            if (this.toggle === 1) {
                BandService.getBandsByGenre(this.searchQuery)
                    .then(response => {
                        const bandData = response.data;
                        bandData.sort((a, b) => a.bandName.localeCompare(b.bandName));
                        bandData.forEach(element => {
                            this.searchResults.push(element);
                        });
                        this.isLoaded = true;
                    });
            }
        }
    },
    created() {
        BandService.getAllGenres()
            .then(response => {
                const genreData = response.data;
                genreData.sort((a, b) => a.name.localeCompare(b.name));
                genreData.forEach(element => {
                    this.genresList.push(element.name); // populates search bar for genres
                });
                this.isLoaded = true;
            });
        BandService.getAllBands()
            .then(response => {
                const bandData = response.data;
                bandData.sort((a, b) => a.bandName.localeCompare(b.bandName));
                bandData.forEach(element => {
                    this.bandsNameList.push(element.bandName); // populates search bar for bands
                    this.bandList.push(element);
                });
                this.isLoaded = true;
            });
    }
}
</script>