<template>
    <div class="item pt-20">
        <div class="polaroid">
            <div>
                <v-img aspect-ratio="1" class="w-100 h-100" cover :src="band.coverimageurl"></v-img>
                <h1 class="text-center caption">{{ band.bandName }}</h1>
            </div>
        </div>
    </div>
</template>

<script>

export default {
    props: ['band']
}
</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap');

.polaroid {
    background: #eaeaea;
    padding: 19px 19px 0px 19px;
    box-shadow: 1rem 1.2rem 1.2rem rgba(0, 0, 0, 0.2);
}

.caption {
    font-size: 200%;
    text-align: center;
    line-height: 6rem;
    font-family: 'Permanent Marker', cursive;
    max-height: 85px;
}
</style>