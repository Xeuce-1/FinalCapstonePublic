<template>
  <!-- LOADING CIRCLE -->
  <v-container v-if="isLoading" class="d-flex justify-center align-center h-screen mt-n16">
    <v-progress-circular color="primary" indeterminate :size="93" :width="12"></v-progress-circular>
  </v-container>

  <!-- PAGE -->
  <v-sheet v-else class="pa-0 ma-0 fill-height w-100" fluid color="transparent">
    <v-sheet fluid color="transparent" id="dynamic-background" v-if="usersBands.length === 0"
      class="fill-height text-center d-flex justify-center align-center flex-column">
      <h1>Hey! Go follow some bands! Click the search button to find your faves!</h1>
      <v-btn class="ma-10" color="button" @click="routeToSearchPage" size="x-large">Find your favorite bands!</v-btn>
    </v-sheet>

    <v-container v-else fluid class="pa-0 ma-0">
      <!-- TOP OF PAGE -->
      <h2 class="welcome-header text-center mb-n10 mt-2">Welcome, {{ splitName[0] }}</h2>
      <v-container fluid class="d-flex justify-space-between ma-0 pa-0">


        <!-- LEFT BOX -->
        <v-sheet class="ma-10 w-50 rounded-xl text-center pa-10" color="transparent">

          <div class="d-flex pa-0 ma-0 fill-height">
            <!-- TOP GENRE WELL -->
            <v-card color="button" class="mx-auto d-flex flex-column align-center justify-center ma-10 rounded-xl"
              elevation="10" width="380" height="380">
              <h2 class="pa-2">Your Top Genre</h2>
              <h1>{{ userTopGenre }}</h1>
            </v-card>

            <!-- BANDS FOLLOWED WELL -->
            <v-card color="button" class="mx-auto d-flex flex-column align-center justify-center ma-10 rounded-xl"
              width="380" height="380" elevation="10">
              <h2 class="pa-2">Number of Bands Followed</h2>
              <h1>{{ userNoBandsFollowed }}</h1>

            </v-card>
          </div>
        </v-sheet>

        <!-- RIGHT BOX (CAROUSEL) -->
        <v-sheet class="ma-10 w-50 rounded-xl d-flex align-center" color="transparent">
          <v-carousel id="carousel" v-show="usersBands.length !== 0" cycle hide-delimiters :interval="carouselInterval"
            show-arrows="hover" class="rounded-xl" max-height="">
            <v-carousel-item v-for="item in userBandImages" :key="item.id" :src="item.url" cover>
            </v-carousel-item>
          </v-carousel>
        </v-sheet>

      </v-container>
      <v-sheet id="band-div" v-show="isAuthenticated" color="#d1bce3">
        <v-divider></v-divider>
        <h1 class="text-center pa-2">Your Bands</h1>
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
  </v-sheet>
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
      carouselInterval: 4500,
      userTopGenre: '',
      userNoBandsFollowed: 0,
      splitName: this.$store.state.user.username.split('@')
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
    BandService.getTopGenre(this.user.id)
      .then(response => {
        this.userTopGenre = response.data;
      })
    BandService.getNoBandsFollowed(this.user.id)
      .then(response => {
        this.userNoBandsFollowed = response.data;
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

#carousel {
  box-shadow: 0rem 0rem 1rem 0.1rem rgb(0, 0, 0, 0.5);
}

.v-input:hover {
  color: rgb(242, 100, 25);
}

.v-input:focus-within {
  color: rgb(242, 100, 25);
}

#band-div {
  box-shadow: inset 0rem 0rem 0.5rem 0.1rem rgb(0, 0, 0, 0.2);
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

.welcome-header {
  font-size: 3rem;
  padding: 0;
  margin: 0;
}
</style>