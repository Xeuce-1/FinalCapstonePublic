<template>
    <div class="item pt-20">
        <v-card variant="elevated" class="polaroid">
            <div>
                <v-img aspect-ratio="1" cover :src="images" @click="overlay = !overlay"></v-img>
            </div>
            <v-overlay v-model="overlay" class="d-flex align-center justify-center" max-height="50%">
                <img :src="images" />
            </v-overlay>
        </v-card>
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
.polaroid {
    background: #eaeaea;
    padding: 19px 19px 85px 19px;
    animation-duration: 0.3s;
    animation-name: mouseOut;
    animation-fill-mode: forwards;
}

.polaroid:hover {
    cursor: pointer;
    animation-duration: 0.3s;
    animation-name: mouseOver;
    animation-fill-mode: forwards;

}

@keyframes mouseOver {
    from {
        box-shadow: 0rem 0.2rem 1rem 0.1rem rgba(0, 0, 0, 0.3);
    }

    to {
        box-shadow: 0rem 1.2rem 1.2rem 0.1rem rgba(0, 0, 0, 0.3);
        transform: rotateX(7deg);
    }
}

@keyframes mouseOut {
    from {
        box-shadow: 0rem 1.2rem 1.2rem 0.1rem rgba(0, 0, 0, 0.3);
        transform: rotateX(5deg);
        
    }

    to {
        box-shadow: 0rem 0.2rem 1rem 0.1rem rgba(0, 0, 0, 0.3);
        transform: rotateX(0deg);
    }
}

.caption {
    font-size: 1.8vw;
    text-align: center;
    line-height: 6rem;
    font-family: 'Permanent Marker', cursive;
}
</style>