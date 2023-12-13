<template>
  <!-- LOADING CIRCLE -->
  <v-container v-if="isLoading" class="d-flex justify-center align-center h-screen mt-n16">
    <v-progress-circular color="primary" indeterminate :size="93" :width="12"></v-progress-circular>
  </v-container>

  <!-- PAGE -->
  <v-sheet fluid color="transparent" id="dynamic-background" v-if="usersBands.length === 0"
    class="fill-height text-center d-flex justify-center align-center flex-column">
    <h1>Hey! Go follow some bands! Click the search button to find your faves!</h1>
    <v-btn class="ma-10" color="button" @click="routeToSearchPage" size="x-large">Find your favorite bands!</v-btn>
  </v-sheet>
  <v-container v-else fluid class="pa-0 ma-0">
    <!-- TOP OF PAGE -->
    <v-container fluid class="d-flex justify-space-between ma-0 pa-0">

      <!-- LEFT BOX -->
      <v-sheet class="ma-10 w-50 rounded-xl text-center" color="secondary">
        placeholder for wells or something
      </v-sheet>

      <!-- RIGHT BOX (CAROUSEL) -->
      <v-sheet class="ma-10 w-50 rounded-xl" color="transparent">
        <v-carousel v-show="usersBands.length !== 0" cycle hide-delimiters :interval="carouselInterval"
          show-arrows="hover" class="rounded-xl">
          <v-carousel-item v-for="item in userBandImages" :key="item.id" :src="item.url" cover>
          </v-carousel-item>
        </v-carousel>
      </v-sheet>

    </v-container>
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
  </v-container>
</template>

<script>
// Components
import SearchPolaroidComponent from '../components/SearchPolaroidComponent.vue';
import BandService from '../services/BandService';

// Services
import FollowerService from '../services/FollowerService';

export default {
  data() {
    return {
      isLoading: true,
      usersBands: [],
      userBandImages: [],
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
    },
    routeToSearchPage() {
      this.$router.push({ name: 'search' })
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
    BandService.getHomepageGalleryImages(this.user.id)
      .then(response => {
        this.userBandImages = response.data;
        this.isLoading = false;
      })
  },
  components: { SearchPolaroidComponent }
};
</script>

<style scoped>
.v-input {
  color: inherit;
  transition: color, 0.2s;
}

.v-input:hover {
  color: rgb(242, 100, 25);
}

.v-input:focus-within {
  color: rgb(242, 100, 25);
}


#dynamic-background {
  background: linear-gradient(-45deg, #00AFB9, #D1BCE3, #F6AE2D);
  background-size: 400% 400%;
  animation: gradient 15s ease infinite;
  height: 100vh;
}

@keyframes gradient {
  0% {
    background-position: 0% 50%;
  }

  50% {
    background-position: 100% 50%;
  }

  100% {
    background-position: 0% 50%;
  }
}
</style>