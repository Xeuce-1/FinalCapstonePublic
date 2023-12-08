<template>
    <h1 v-if="!isLoaded">LOADING...</h1>

    <v-sheet v-else class="d-flex justify-center align-center flex-column">
        <h1>Band Search</h1>
        <v-sheet rounded class="d-flex justify-center align-center flex-column w-50" elevation="4">
            <v-btn-toggle mandatory v-model="toggle" color="#0081a7" divided class="ma-5 w-100 d-flex justify-center">
                <v-btn border class="w-25" @click.stop="searchQuery = ''">Band</v-btn>
                <v-btn border class="w-25" @click.stop="searchQuery = ''">Genre</v-btn>
            </v-btn-toggle>

            <v-autocomplete clearable v-if="toggle === 0" :items="bandsNameList" class="w-75"
                prepend-inner-icon="mdi-magnify" v-model="searchQuery">SEARCH
                BAR</v-autocomplete>
            <v-autocomplete clearable v-else-if="toggle === 1" :items="genresList" class="w-75"
                prepend-inner-icon="mdi-magnify" v-model="searchQuery">SEARCH
                BAR</v-autocomplete>
            <v-btn class="ma-10 w-50" color="#00afb9" @click.stop="showSearchResults">SEARCH</v-btn>


        </v-sheet>
        <div class="pa-10">
            <!-- <p>SEARCH RESULTS: {{ searchResults }}</p> -->

            <v-row>
                <v-col v-for="item in searchResults" :key="item.id" class="d-flex child-flex" cols="3">
                    <router-link :to="{ name: 'band', params: { id: item.id } }">
                        <SearchPolaroidComponent class="h-100 w-100" :band="item" />
                    </router-link>
                </v-col>
            </v-row>

        </div>
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
        showSearchResults() {
            // this.searchResults = [];
            if (this.toggle === 0) {
                this.searchResults = this.bandList.filter((element) => element.bandName.toLowerCase() == this.searchQuery.toLowerCase());
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
                    this.genresList.push(element.name);
                });
                this.isLoaded = true;
            });
        BandService.getAllBands()
            .then(response => {
                const bandData = response.data;
                bandData.sort((a, b) => a.bandName.localeCompare(b.bandName));
                bandData.forEach(element => {
                    this.bandsNameList.push(element.bandName);
                    this.bandList.push(element);
                });
                this.isLoaded = true;
            });
    }
}
</script>

<style scoped></style>