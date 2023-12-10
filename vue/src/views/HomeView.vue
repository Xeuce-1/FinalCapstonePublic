<template>
  <div class="d-flex justify-space-between">
    <v-sheet class="ma-10 w-50" color="transparent">
      <v-card class="mx-auto rounded-xl">
        <v-toolbar color="primary">
          <v-btn variant="text" icon="mdi-menu"></v-btn>

          <v-toolbar-title>Inbox</v-toolbar-title>

          <v-spacer></v-spacer>

          <v-btn variant="text" icon="mdi-magnify"></v-btn>
        </v-toolbar>

        <!-- V LISTTTT -->
        <v-list lines="one">
          <v-list-item v-for="item in notifications" :key="item.id" :title="item.subject" :subtitle="item.description">
            <v-divider></v-divider>
          </v-list-item>
        </v-list>
      </v-card>

    </v-sheet>
    <v-sheet class="ma-10 w-50 rounded-xl" color="transparent">
      <v-carousel class="w-100 h-100 rounded-xl">
        <v-carousel-item src="https://cdn.vuetifyjs.com/images/cards/docks.jpg" cover></v-carousel-item>

        <v-carousel-item src="https://cdn.vuetifyjs.com/images/cards/hotel.jpg" cover></v-carousel-item>

        <v-carousel-item src="https://cdn.vuetifyjs.com/images/cards/sunshine.jpg" cover></v-carousel-item>
      </v-carousel>
    </v-sheet>

  </div>
  <!--  -->
  <v-sheet v-show="isAuthenticated">
    <h1 class="text-center">My Bands</h1>
  </v-sheet>
  <div class="w- pa-10">
    <v-text-field label="Filter Bands" @keyup="filterBands" v-model="filterQuery" variant="outlined"></v-text-field>
    <div v-show="filterQuery">
      <v-row>
        <v-col v-for="band in displayedBands" :key="band.id" class="d-flex child-flex" cols="3">
          <SearchPolaroidComponent class="h-100 w-100" :band="band" @click="toSelectedBandPage(band.id)" />
        </v-col>
      </v-row>
    </div>
    <div v-show="filterQuery === ''">
      <v-row>
        <v-col v-for="band in usersBands" :key="band.id" class="d-flex child-flex" cols="3">
          <SearchPolaroidComponent class="h-100 w-100" :band="band" @click="toSelectedBandPage(band.id)" />
        </v-col>
      </v-row>
    </div>
  </div>
</template>

<script>

// Components
import SearchPolaroidComponent from '../components/SearchPolaroidComponent.vue';

// Services
import FollowerService from '../services/FollowerService';
import NotificationsService from '../services/NotificationsService'

export default {
  data() {
    return {
      usersBands: [],
      displayedBands: [],
      filterQuery: '',
      user: this.$store.state.user,
      notifications: [],
      testItems: [
        { type: 'subheader', title: 'Today' },
        {
          prependAvatar: 'https://cdn.vuetifyjs.com/images/lists/1.jpg',
          title: 'Brunch this weekend?',
          subtitle: `<span class="text-primary">Ali Connors</span> &mdash; I'll be in your neighborhood doing errands this weekend. Do you want to hang out?`,
        },
        {
          prependAvatar: 'https://cdn.vuetifyjs.com/images/lists/1.jpg',
          title: 'Brunch this weekend?',
          subtitle: `<span class="text-primary">Ali Connors</span> &mdash; I'll be in your neighborhood doing errands this weekend. Do you want to hang out?`,
        },
        {
          prependAvatar: 'https://cdn.vuetifyjs.com/images/lists/1.jpg',
          title: 'Brunch this weekend?',
          subtitle: `<span class="text-primary">Ali Connors</span> &mdash; I'll be in your neighborhood doing errands this weekend. Do you want to hang out?`,
        },
        { type: 'divider', inset: true },
        {
          prependAvatar: 'https://cdn.vuetifyjs.com/images/lists/2.jpg',
          title: 'Summer BBQ',
          subtitle: `<span class="text-primary">to Alex, Scott, Jennifer</span> &mdash; Wish I could come, but I'm out of town this weekend.`,
        },
        { type: 'divider', inset: true },
        {
          prependAvatar: 'https://cdn.vuetifyjs.com/images/lists/3.jpg',
          title: 'Oui oui',
          subtitle:
            '<span class="text-primary">Sandra Adams</span> &mdash; Do you have Paris recommendations? Have you ever been?',
        },
        { type: 'divider', inset: true },
        {
          prependAvatar: 'https://cdn.vuetifyjs.com/images/lists/4.jpg',
          title: 'Birthday gift',
          subtitle:
            '<span class="text-primary">Trevor Hansen</span> &mdash; Have any ideas about what we should get Heidi for her birthday?',
        },
        { type: 'divider', inset: true },
        {
          prependAvatar: 'https://cdn.vuetifyjs.com/images/lists/5.jpg',
          title: 'Recipe to try',
          subtitle:
            '<span class="text-primary">Britta Holt</span> &mdash; We should eat this: Grate, Squash, Corn, and tomatillo Tacos.',
        },
      ],
    };
  },
  computed: {
    isAuthenticated() {
      return this.$store.state.token !== "";
    }
  },
  methods: {
    filterBands() {
      if (this.filterQuery) {
        this.displayedBands = this.usersBands.filter((element) => element.bandName.toLowerCase().includes(this.filterQuery.toLowerCase()));
      }
    },
    toSelectedBandPage(bandId) {
      this.$router.push({ name: 'band', params: { id: bandId } })
    }
  },
  created() {
    FollowerService.getUsersFollowers(this.user.id)
      .then(response => {
        const data = response.data;
        data.forEach(element => {
          this.usersBands.push(element);
        });
      });

    NotificationsService.getAllNotifications()
      .then(response => {
        this.notifications = response.data;
      })

    /*
        NotificationsService.getAllNotifications()
          .then(response => {
            this.notifications = response.data;
          })
          */
  },
  components: { SearchPolaroidComponent }
};
</script>