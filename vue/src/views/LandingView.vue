<template>
    <v-container v-if="isLoading" class="d-flex justify-center align-center h-screen mt-n16">
        <v-progress-circular color="primary" indeterminate :size="93" :width="12"></v-progress-circular>
    </v-container>
    <v-container v-else color="transparent">
        <v-sheet class="ma-10">
            <v-carousel cycle :interval="carouselInterval" show-arrows="hover" class="rounded-lg">
                <v-carousel-item v-for="image in images" :key="image.id" @click="onCarouselClick(image.id)">
                    <v-img :src="image.coverimageurl" cover></v-img>
                </v-carousel-item>
            </v-carousel>
        </v-sheet>

        <v-sheet class="ma-10 border pa-10 rounded-lg">
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Pariatur eveniet nemo dolores a dolore officiis,
                nostrum dignissimos doloribus nam aut nulla ex at maiores sit harum vitae omnis beatae hic. Lorem ipsum
                dolor
                sit amet, consectetur adipisicing elit. Sequi quaerat, cupiditate mollitia fuga accusamus illo praesentium
                possimus sit facere dolore, ipsum aliquid exercitationem. Nulla possimus numquam voluptatibus nobis corporis
                sequi. Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut ratione iusto, dignissimos aperiam
                recusandae
                quo in ipsam aliquam consequatur labore molestias impedit quae, obcaecati, id similique repellat nostrum
                deleniti tempore.
                In consequatur illo enim incidunt quasi quis mollitia omnis voluptates, blanditiis alias laudantium, soluta
                ullam, distinctio quod. Laboriosam magni exercitationem natus consequuntur perferendis rerum iste nobis
                repellat. Minus, praesentium molestiae.
                Vel recusandae error perspiciatis, odio debitis amet, veniam qui blanditiis, fugiat magnam incidunt ullam
                dicta
                magni ea asperiores et doloremque quo eligendi sapiente saepe cupiditate iure quisquam! Molestias,
                voluptatibus
                blanditiis.</p>
        </v-sheet>
    </v-container>
</template>

<script>
import BandService from '../services/BandService.js';

import axios from 'axios';
export default {
    data() {
        return {
            images: [],
            isLoading: true,
            carouselInterval: 5000
        }
    },
    created() {
        if (this.$store.state.token !== "") {
            this.$router.push({ name: 'home' });
        }
        BandService.getRandomImages()
            .then(response => {
                this.images = response.data;
                this.isLoading = false
            },
            )
    },
    methods: {

        onCarouselClick(id) {
            if (this.$store.state.token === "") {
                this.$router.push({ name: 'band', params: { id } });
            } else {
                this.$router.push({ name: 'login' });
            }
        }

    }



}
</script>