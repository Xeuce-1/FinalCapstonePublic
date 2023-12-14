<template>
    <v-container v-if="isLoading" class="d-flex justify-center align-center h-screen mt-n16">
        <v-progress-circular color="primary" indeterminate :size="93" :width="12"></v-progress-circular>
    </v-container>
    <v-container v-else color="transparent">
        <h1 class="text-container">Band-It</h1>
        {{ images }}
        <p id="headline" class="text-center">The best place to connect with your favorite bands!</p>
        <v-sheet class="ma-0" color="transparent rounded=lg">
            <v-carousel cycle show-arrows="hover" class="rounded-xl">
                <v-carousel-item v-for="image in images" :key="image.id" @click="onCarouselClick(image.id)">
                    <v-img :src="image.coverimageurl" cover></v-img>
                </v-carousel-item>
            </v-carousel>
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
            isLoading: true
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

<style scoped>
#blur-effect {
    filter: blur(8px);
    height: 100%;
}

.text-container {
    margin-top: -5rem;
    margin-bottom: -3rem;
    padding: -10;
    font-size: 16rem;
    color: rgba(225, 225, 225, 0.01);
    background-image: url("https://www.adobe.com/content/dam/cc/us/en/creativecloud/photography/discover/concert-photography/thumbnail.jpeg");
    background-repeat: repeat;
    -webkit-background-clip: text;
    animation: animate 15s ease-in-out infinite;
    text-align: center;
    text-transform: uppercase;
    font-weight: 900;
}

#headline {
    font-size: 3rem;
}

@keyframes animate {

    0%,
    100% {
        background-position: left top;
    }

    25% {
        background-position: right bottom;
    }

    50% {
        background-position: left bottom;
    }

    75% {
        background-position: right top;
    }
}
</style>