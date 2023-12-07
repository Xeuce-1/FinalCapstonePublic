<template>
    <div>
      <v-file-input v-model="heroImage" label="Hero Image" @change="saveHeroImage" accept="image/*"></v-file-input>
      <v-text-field v-model="bandName" label="Band Name" @input="saveBandName"></v-text-field>
      <v-textarea v-model="description" label="Description" @input="saveDescription"></v-textarea>
      <v-text-field v-model="genres" label="Genres" @input="saveGenres"></v-text-field>
      <v-file-input v-model="galleryImages" label="Gallery Images" @change="saveGalleryImages" accept="image/*" multiple></v-file-input>
      <v-btn @click="saveAll">Save Band</v-btn>
    </div>
</template>
  
  <script>
  export default {
    data() {
      return {
        heroImage: null,
        bandName: "",
        description: "",
        genres: "",
        galleryImages: [],
      };
    },
    methods: {
      saveHeroImage() {
        // Call BandService method to save hero image
        // You may want to handle file uploads using FormData and send it to your server
        // BandService.saveHeroImage(this.heroImage).then(() => {});
    
      },
      saveBandName() {
        // Call BandService method to save band name
        // BandService.saveBandName(this.bandName).then(() => {});

      },
      saveDescription() {
        // Call BandService method to save description
        // BandService.saveDescription(this.description).then(() => {});
      },
      saveGenres() {
        // Call BandService method to save genres
        // BandService.saveGenres(this.genres).then(() => {});
      },
      saveGalleryImages() {
        // Call BandService method to save gallery images
        // You may want to handle file uploads using FormData and send it to your server
        // BandService.saveGalleryImages(this.galleryImages).then(() => {});
      },
      saveAll() {
        // Optionally, you can call this method to save all properties at once
        // You can implement this based on your specific requirements
        // BandService.saveAll({ heroImage: this.heroImage, bandName: this.bandName, ... }).then(() => {});
      },
    },
  };
  </script>
  
  <style scoped>
  /* Add your styles here */
  </style>
  