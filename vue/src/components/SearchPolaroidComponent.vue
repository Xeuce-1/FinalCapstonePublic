<template>
    <div class="item pt-20">
        <div class="polaroid">
            <div>
                <v-img aspect-ratio="1" cover :src="band.coverimageurl" @click="overlay = !overlay"></v-img>
            </div>
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
    props: ['band']
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