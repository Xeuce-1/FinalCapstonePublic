<template>
  <v-sheet v-show="isAuthenticated">
    <h1 class="text-center">My Bands</h1>
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
import SearchPolaroidComponent from '../components/SearchPolaroidComponent.vue';
import FollowerService from '../services/FollowerService';
export default {
  data() {
    return {
      usersBands: [],
      displayedBands: [],
      filterQuery: '',
      user: this.$store.state.user
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