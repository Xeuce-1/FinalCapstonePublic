<template>
  <div>
    <h3>Upload Hero Image</h3>
    <upload-widget v-model="band.heroImage" label="Hero Image" accept="image/*"></upload-widget>
    <v-text-field v-model="band.bandName" label="Band Name"></v-text-field>
    <v-textarea v-model="band.description" label="Description"></v-textarea>
    <v-text-field v-model="band.genres" label="Genres"></v-text-field>
    <h3>Upload Gallery Images</h3>
    <upload-widget id="file-input" @change="handleFileChange($event.target)" v-model="band.galleryImages"
      label="Gallery Images" accept="image/*" multiple></upload-widget>
    <v-btn @click="saveAll">Save Band</v-btn>
  </div>
</template>
  
<script>
import BandService from '../services/BandService';
import UploadWidget from '../components/UploadWidget.vue';

export default {
  data() {
    return {
      band: {
        heroImage: null,
        bandName: "",
        description: "",
        genres: "",
        galleryImages: [],
      },
      
      fileName: "",
      preview: null,
      preset: import.meta.env.VUE_APP_UPLOAD_PRESET,
      formData: null,
      cloudName: import.meta.env.VUE_APP_CLOUD_NAME,
      success: "",
    };
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
    },
  }, 
  components: { 
    UploadWidget
  },
};
</script>
  
<style scoped>
/* Add your styles here */
</style>