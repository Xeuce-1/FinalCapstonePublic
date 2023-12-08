<template>
    <!-- placeholder comment -->
    <h1 v-if="!isLoaded">LOADING...</h1>
    <div v-else>
        <section class="ma-10">
            <v-img max-height="30rem" aspect-ratio="16/9" cover :src="band.coverimageurl"></v-img>
        </section>
        <section class="d-flex justify-space-between ma-5">
            <v-card class="w-50 ma-5">
                <div class="d-flex ma-2 justify-space-between">
                    <h2>{{ band.bandName }}</h2>


                    <div v-show="isAuthenticated" class="pa-2">
                        <v-btn v-if="!isBandFollowed" class="mr-10" @click.stop="followBand()">Follow</v-btn>

                        <v-btn v-if="isBandFollowed" class="mr-10" @click.stop="unfollowBand()">Unfollow</v-btn>
                    </div>



                </div>
                <div class="ma-2">
                    <v-chip v-for="genre in band.genreList" :key="genre.id">{{ genre.name }}</v-chip>
                </div>
                <p class="ma-2">{{ band.description }}</p>
            </v-card>
            <v-card class="w-50 ma-5 carousel-clicker">
                <v-carousel cycle hide-delimiters :show-arrows="false" v-on:click="onCarouselClick">
                    <v-carousel-item v-for="image in band.gallery" :key="image.id" :src="image.url" cover></v-carousel-item>
                </v-carousel>
            </v-card>
        </section>
    </div>
</template>

<script>
import BandService from '../services/BandService.js';
import FollowerService from '../services/FollowerService.js';
import AuthService from '../services/AuthService.js';

export default {
    data() {
        return {
            band: {},
            follower: {},
            isLoaded: false,
            userId: null,
            bandId: null,
        }
    },
    methods: {

        followBand() {
            console.log("this.follower before following:", this.follower);

            const band = this.band;
            FollowerService.followBand(band)
                .then(response => {
                    if (response) {
                        this.$store.commit('FOLLOW_BAND', band.id);
                        console.log("State after following:", this.$store.state);
                        console.log("Is band followed after following:", this.$store.getters.isBandFollowed(this.band.id));
                    }
                    // console.log("this.follower after following:", this.follower);
                    // console.log("this.follower.following:", this.follower.following);
                })
                .catch(error => {
                    console.log(error);
                });
            // .finally(() => {
            //     console.log("this.follower after unfollowing and checking status:", this.follower);
            //     console.log("this.follower.following after unfollowing and checking status:", this.follower.following);
            // });

        },
        unfollowBand() {
            console.log("this.follower before unfollowing:", this.follower);

            const band = this.band;
            FollowerService.unfollowBand(band)
                .then(response => {
                    this.$store.commit('UNFOLLOW_BAND', band);
                    console.log("this.follower after unfollowing:", this.follower);
                    console.log("this.follower.following:", this.follower.following);
                })
                .catch(error => {
                    console.log(error);
                })
                .finally(() => {
                    this.checkFollowingStatus();
                    console.log("this.follower after unfollowing and checking status:", this.follower);
                    console.log("this.follower.following after unfollowing and checking status:", this.follower.following);
                });
        },
        checkFollowingStatus() {
            const isFollowing = this.$store.getters.isBandFollowed(this.band.id);
            console.log("Is band followed:", isFollowing)
        },


        onCarouselClick() {
            this.$router.push(`/band/${this.$route.params.id}/gallery`);
        }
    },
    created() {
        const id = this.$route.params.id;
        BandService.getBandById(id)
            .then(response => {
                this.band = response.data;
                this.isLoaded = true;
                console.log("band Data", response.data);
            });

        // FollowerService.getFollowerById(id)
        //     .then(following => {
        //         this.follower.following = following;
        //         this.userId = this.follower.userId;
        //         this.checkFollowingStatus();
        //         console.log("follower Data", following.data);
        //         console.log("this.follower after getting follower data:", this.follower);
        //         console.log("this.follower.following after getting follower data:", this.follower.following);
        //     })
        //     // TODO: lets look at this error
        //     .catch(error => {
        //         console.log("not sure how to deal with this yet");
        //         console.error(error);
        //     });
    },

    computed: {
        isAuthenticated() {
            return this.$store.state.token !== "";
        },
        isBandFollowed() {
            return this.$store.state.followingBands.includes(this.bandId);
        }
    }


}
</script>

<style scoped>
.carousel-clicker:hover {
    cursor: pointer !important;
}
</style>