<template>
    <section class="ma-10">
        <v-carousel cycle show-arrows="hover">

            <v-carousel-item v-for="image in images" :key="image.id" @click="onCarouselClick(image.id)">
                <v-img :src="image.coverimageurl" cover></v-img>
            </v-carousel-item>

            <!-- <v-carousel-item src="https://cdn.vuetifyjs.com/images/cards/hotel.jpg" cover></v-carousel-item>

            <v-carousel-item src="https://cdn.vuetifyjs.com/images/cards/sunshine.jpg" cover></v-carousel-item> -->
        </v-carousel>
    </section>

    <section class="ma-10 border pa-10">
        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Pariatur eveniet nemo dolores a dolore officiis,
            nostrum dignissimos doloribus nam aut nulla ex at maiores sit harum vitae omnis beatae hic. Lorem ipsum dolor
            sit amet, consectetur adipisicing elit. Sequi quaerat, cupiditate mollitia fuga accusamus illo praesentium
            possimus sit facere dolore, ipsum aliquid exercitationem. Nulla possimus numquam voluptatibus nobis corporis
            sequi. Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut ratione iusto, dignissimos aperiam recusandae
            quo in ipsam aliquam consequatur labore molestias impedit quae, obcaecati, id similique repellat nostrum
            deleniti tempore.
            In consequatur illo enim incidunt quasi quis mollitia omnis voluptates, blanditiis alias laudantium, soluta
            ullam, distinctio quod. Laboriosam magni exercitationem natus consequuntur perferendis rerum iste nobis
            repellat. Minus, praesentium molestiae.
            Vel recusandae error perspiciatis, odio debitis amet, veniam qui blanditiis, fugiat magnam incidunt ullam dicta
            magni ea asperiores et doloremque quo eligendi sapiente saepe cupiditate iure quisquam! Molestias, voluptatibus
            blanditiis.</p>
    </section>
</template>

<script>
import BandService from '../services/BandService.js';

import axios from 'axios';
export default {
    data() {
        return {
            images: [],
        }
    },
    created() {
        if (this.$store.state.token !== "") {
            this.$router.push({ name: 'home' });
        }
        BandService.getRandomImages()
            .then(response => {
                this.images = response.data;
            }

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