<template>
    <section class="ma-10">
        <v-img max-height="30rem" aspect-ratio="16/9" cover
            src="https://images.unsplash.com/photo-1526478806334-5fd488fcaabc?q=80&w=2116&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"></v-img>
    </section>
    <section class="d-flex justify-space-between ma-5">
        <v-card color="blue" class="w-50 ma-5">
            <div class="d-flex ma-2 justify-space-between">
                <h2>Band Name</h2>
                <v-btn class="mr-10">Follow/Unfollow</v-btn>
            </div>
            <div class="ma-2">
                <v-chip variant="elevated">Genre 1</v-chip>
            </div>
            <p class="ma-2">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Repellendus nulla fugiat asperiores
                ipsa voluptas
                quam quo possimus totam autem eveniet, doloribus esse ex sapiente molestiae illum tempora, blanditiis vero
                delectus.</p>
        </v-card>
        <v-card class="w-50 ma-5">
            <v-carousel cycle>
                <v-carousel-item src="https://cdn.vuetifyjs.com/images/cards/docks.jpg" cover></v-carousel-item>

                <v-carousel-item src="https://cdn.vuetifyjs.com/images/cards/hotel.jpg" cover></v-carousel-item>

                <v-carousel-item src="https://cdn.vuetifyjs.com/images/cards/sunshine.jpg" cover></v-carousel-item>
            </v-carousel>
        </v-card>
    </section>
</template>

<script>
export default {

}
</script>

<style scoped></style>