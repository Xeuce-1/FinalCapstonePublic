<template>
  <v-sheet fluid class="d-flex justify-center align-center flex-column" color="transparent">
    <h1 class="mt-5">JOIN OUR SITE: ADD YOUR BAND!</h1>
    <v-card elevation="12" rounded="lg" width="100%" class="pa-10 text-center w-75 ma-10 rounded-xl" color="#E9F7F8">
      <h3>Upload Hero Image</h3>
      <hero-upload-widget v-model="band.coverimageurl" label="Hero Image" accept="image/*"></hero-upload-widget>
      <v-img :src="showImage" max-height="100"></v-img>
      <div class="pa-5">
        <v-text-field v-model="band.bandName" label="Band Name" class=""></v-text-field>
        <v-textarea v-model="band.description" label="Description"></v-textarea>
        <v-select label="Select" item-title="name" item-value="id" :items="genresList" multiple
          v-model="selectedGenres"></v-select>
      </div>
      <!-- <v-text-field v-model="genre.name" label="Genres"></v-text-field> -->
      <h3>Upload Gallery Images</h3>
      <gallery-upload-widget id="file-input" @change="handleFileChange($event.target)" v-model="band.gallery"
        label="Gallery Images" accept="image/*" multiple></gallery-upload-widget>
      <v-container class="d-flex justify-start">
        <v-img fill :src="galleryImage" :key="galleryImage" v-for="galleryImage in galleryImages" height="120px"
          width="120px"></v-img>
      </v-container>
      <!-- <h4>{{ band }}</h4> -->
      <v-container class="w-50 d-flex justify-center">
        <v-btn @click="saveAll" color="button" size="x-large" block class="w-50">Save Band</v-btn>
        {{ this.$store.state.band }}
      </v-container>
      <!-- <router-link to="/band/:id"></router-link> -->
    </v-card>
  </v-sheet>
</template>
  
<script>
import BandService from '../services/BandService';
import HeroUploadWidget from '../components/HeroUploadWidget.vue';
import GalleryUploadWidget from '../components/GalleryUploadWidget.vue';

export default {
  data() {
    return {
      //possibly create a checkbox for your possible genres
      // genre: {name: "", id: 0}, 
      genresList: [],
      selectedGenres: [],
      band: {
        coverimageurl: "",
        bandName: "",
        description: "",
        genreList: [],
        gallery: [],
      },
      // coverimageurl: this.$store.state.createBandHeroUrl,
      fileName: "",
      preview: null,
      preset: import.meta.env.VUE_APP_UPLOAD_PRESET,
      formData: null,
      cloudName: import.meta.env.VUE_APP_CLOUD_NAME,
      success: "",
    };
  },
  computed: {
    showImage() {
      console.log(this.$store.state.createBandHeroUrl);
      return this.$store.state.createBandHeroUrl;
    },
    galleryImages() {
      return this.$store.state.createBandGallery;
    },
    genres() {
      return this.$store.state.createGenreList;
    }
  },
  methods: {
    handleFileChange: function (event) {
      this.file = event.files[0];
      this.fileName = this.file.name;
      this.formData = new FormData();
      this.formData.append("upload_preset", this.preset);
      let reader = new FileReader();
      reader.readAsDataURL(this.file);
      reader.onload = (e) => {
        this.preview = e.target.result;
        this.formData.append("file", this.preview);
      };
    },
    iterateOverCreateBandGallery(array) {
      return array.map(item => ({ "url": item }));
    },
    iterateOverGenres(selectedGenreArray) {
      return selectedGenreArray.map(id => ({ "id": id }));
    },
    saveAll() {
      const band = this.band;
      band.coverimageurl = this.$store.state.createBandHeroUrl;
      //iterate the array of strings and create an array of objects with in the array. 
      //create a method that does this. and then call the method here. 
      //this.$store.store.galleryimages.mapimage => {}
      band.gallery = this.iterateOverCreateBandGallery(this.$store.state.createBandGallery);
      band.genreList = this.iterateOverGenres(this.selectedGenres);

      BandService.createBand(band)
        .then(response => {
          if (response) {
            this.$store.commit('CREATE_BAND', band.id);
            const data = response.data;
            this.$router.push({ name: 'band', params: { id: data.id } })
          }
        })
        .catch(error => {
          console.log(error);
        });
    },
  },
  components: {
    HeroUploadWidget,
    GalleryUploadWidget
  },
  created() {
    BandService.getAllGenres()
      .then(response => {
        const genreData = response.data;

        genreData.sort((a, b) => a.name.localeCompare(b.name));
        this.genresList = genreData;

        this.isLoaded = true;
      });
  }
};
</script>
  
<style scoped>
/* Add your styles here */
</style>