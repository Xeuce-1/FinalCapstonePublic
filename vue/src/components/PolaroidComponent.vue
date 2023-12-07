<template>
    <div class="item pt-20">
        <div class="polaroid">
            <div>
                <v-img aspect-ratio="1" cover :src="images" @click="overlay = !overlay"></v-img>
            </div>
            <v-overlay v-model="overlay" class="d-flex align-center justify-center">
                <img :src="images" />
            </v-overlay>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            overlay: false
        }
    },
    props: ['images']
}
</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap');

.polaroid {
    background: #eaeaea;
    padding: 19px 19px 85px 19px;
    box-shadow: 1rem 1.2rem 1.2rem rgba(0, 0, 0, 0.2);
}

.caption {
    font-size: 1.8vw;
    text-align: center;
    line-height: 6rem;
    font-family: 'Permanent Marker', cursive;
}
</style>

<!-- "https://image.ibb.co/b8UJBc/administration_architecture_big_ben_221166.jpg" -->