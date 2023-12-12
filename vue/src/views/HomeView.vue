<template>
  <div class="d-flex justify-space-between">
    <v-sheet class="ma-10 w-50 rounded-xl" color="secondary">
      placeholder for wells or something
    </v-sheet>

    <v-sheet class="ma-10 w-50 rounded-xl" color="transparent">
      <v-carousel cycle hide-delimiters :show-arrows="false" cover class="w-100 h-100 rounded-xl"
        :interval="carouselInterval">
        <v-carousel-item src="https://cdn.vuetifyjs.com/images/cards/docks.jpg" cover></v-carousel-item>

        <v-carousel-item src="https://cdn.vuetifyjs.com/images/cards/hotel.jpg" cover></v-carousel-item>

        <v-carousel-item src="https://cdn.vuetifyjs.com/images/cards/sunshine.jpg" cover></v-carousel-item>
      </v-carousel>
    </v-sheet>

  </div>
  <v-sheet v-show="isAuthenticated" color="#d1bce3">
    <v-divider></v-divider>
    <h1 class="text-center pa-2">My Bands</h1>
    <v-divider></v-divider>

  </v-sheet>
  <div class="w- pa-10">
    <v-text-field label="Filter Bands" @keyup="filterBands" v-model="filterQuery" variant="outlined"></v-text-field>
    <div v-show="filterQuery">
      <v-row>
        <v-col v-for="band in displayedBands" :key="band.id" class="d-flex child-flex" cols="3">
          <SearchPolaroidComponent class="h-100 w-100" :band="band" @click="toSelectedBandPage(band.id)" />
        </v-col>
      </v-row>
    </div>
    <div v-show="filterQuery === ''">
      <v-row>
        <v-col v-for="band in usersBands" :key="band.id" class="d-flex child-flex" cols="3">
          <SearchPolaroidComponent class="h-100 w-100" :band="band" @click="toSelectedBandPage(band.id)" />
        </v-col>
      </v-row>
    </div>
  </div>
</template>

<script>
// Components
import SearchPolaroidComponent from '../components/SearchPolaroidComponent.vue';

// Services
import FollowerService from '../services/FollowerService';

export default {
  data() {
    return {
      usersBands: [],
      displayedBands: [],
      filterQuery: '',
      user: this.$store.state.user,
      carouselInterval: 4500
    };
  },
  computed: {
    isAuthenticated() {
      return this.$store.state.token !== "";
    }
  },
  methods: {
    filterBands() {
      if (this.filterQuery) {
        this.displayedBands = this.usersBands.filter((element) => element.bandName.toLowerCase().includes(this.filterQuery.toLowerCase()));
      }
    },
    toSelectedBandPage(bandId) {
      this.$router.push({ name: 'band', params: { id: bandId } })
    }
  },
  created() {
    FollowerService.getUsersFollowers(this.user.id)
      .then(response => {
        const data = response.data;
        data.forEach(element => {
          this.usersBands.push(element);
        });
      });
  },
  components: { SearchPolaroidComponent }
};
</script>