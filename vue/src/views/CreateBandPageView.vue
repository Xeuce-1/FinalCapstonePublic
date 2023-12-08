<template>
    <div>
      <v-file-input v-model="band.heroImage" label="Hero Image"  accept="image/*"></v-file-input>
      <v-text-field v-model="band.bandName" label="Band Name"></v-text-field>
      <v-textarea v-model="band.description" label="Description" ></v-textarea>
      <v-text-field v-model="band.genres" label="Genres" ></v-text-field>
      <v-file-input v-model="band.galleryImages" label="Gallery Images"  accept="image/*" multiple></v-file-input>
      <v-btn @click="saveAll">Save Band</v-btn>
    </div>
</template>
  
  <script>
import BandService from '../services/BandService';

  export default {
    data() {
      return {
        band: {
        heroImage: null,
        bandName: "",
        description: "",
        genres: "",
        galleryImages: [],
        }
      };
    },
    methods: {
      
      saveAll() {
        const band = this.band;
            BandService.createBand(band)
                .then(response => {
                    if (response) {
                        this.$store.commit('CREATE_BAND', band.id);
                        
                    }
                })
                .catch(error => {
                    console.log(error);
                });
      }
    },
  };
  </script>
  
  <style scoped>
  /* Add your styles here */
  </style>