<template>
    <div class="item pt-20">
        <v-card hover class="polaroid">
            <div>
                <v-img aspect-ratio="1" class="w-100 h-100" cover :src="band.coverimageurl"></v-img>
                <h1 class="text-center caption">{{ band.bandName }}</h1>
            </div>
        </v-card>
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
    transition: color, 0.3s;
}

.polaroid:hover {
    cursor: pointer;
    color: rgb(242, 100, 25); 
}

.caption {
    font-size: 200%;
    text-align: center;
    line-height: 6rem;
    font-family: 'Permanent Marker', cursive;
    max-height: 85px;
}
</style>