<template>
 <v-sheet fluid class="ma-10">
    <h3>Upload Hero Image</h3>
    <hero-upload-widget v-model="band.coverimageurl" label="Hero Image" accept="image/*"></hero-upload-widget>
    <v-img :src="showImage" max-height="100" ></v-img>
    <v-text-field v-model="band.bandName" label="Band Name" class="ma-2 pa-2" ></v-text-field>
    <v-textarea v-model="band.description" label="Description" ></v-textarea>
    <v-select label="Select" :items="genresList" multiple v-model="band.genres"></v-select>
    <!-- <v-text-field v-model="genre.name" label="Genres"></v-text-field> -->
    <h3>Upload Gallery Images</h3>
    <gallery-upload-widget id="file-input" @change="handleFileChange($event.target)" v-model="band.gallery"
      label="Gallery Images" accept="image/*" multiple></gallery-upload-widget>
    <v-container class="d-flex justify-start">
      <v-img fill :src="galleryImage" :key="galleryImage" v-for="galleryImage in galleryImages" height="120px"
        width="120px"></v-img>
    </v-container>
    <!-- <h4>{{ band }}</h4> -->
    <!-- <h4>{{ this.$store.state.token }}</h4> -->
    <v-btn @click="saveAll" color="button" size="x-large" block="" >Save Band</v-btn>
    <router-link to="/band/:id"></router-link>
  
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
      // genre: {name: ""}, 
      genresList: [],
      selectedGenres: [],
      band: {
        coverimageurl: "",
        bandName: "",
        description: "",
        genres: [],
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
    return array.map(item => ({"url" : item}));
    },

    iterateOverGenres(array) {
      return array.map(item => ({"name" : item}));
    },
    saveAll() {
      const band = this.band;
      // band.genres = [this.genre]
      band.coverimageurl = this.$store.state.createBandHeroUrl;
            //iterate the array of strings and create an array of objects with in the array. 
            //create a method that does this. and then call the method here. 
            //this.$store.store.galleryimages.mapimage => {}
      band.gallery = this.iterateOverCreateBandGallery(this.$store.state.createBandGallery);
      band.genres = this.iterateOverGenres(this.$store.state.createGenreList);
      
      console.log("band data", this.band)

      BandService.createBand(band)
        .then(response => {
          if (response) {
            this.$store.commit('CREATE_BAND', band.id);
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
        genreData.forEach(element => {
          this.genresList.push(element.name); // populates search bar for genres
        });
        this.isLoaded = true;
      });
  }
};
</script>
  
<style scoped>
/* Add your styles here */
</style>