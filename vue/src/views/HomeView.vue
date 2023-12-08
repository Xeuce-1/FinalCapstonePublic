<template>
  <div class="d-flex justify-space-between">
    <v-sheet class="ma-10 w-50" color="blue">
      <v-card class="mx-auto">
        <v-toolbar color="cyan-lighten-1">
          <v-btn variant="text" icon="mdi-menu"></v-btn>

          <v-toolbar-title>Inbox</v-toolbar-title>

          <v-spacer></v-spacer>

          <v-btn variant="text" icon="mdi-magnify"></v-btn>
        </v-toolbar>

        <!-- V LISTTTT -->
        <v-list selected :items="items" item-props lines="three">
          <template v-slot:subtitle="{ subtitle }">
            <div v-html="subtitle"></div>
            <div v-html="paragraph"></div>
          </template>
        </v-list>
      </v-card>

    </v-sheet>
    <v-sheet class="ma-10 w-50" color="red">
      <v-window v-model="window" show-arrows>
        <v-window-item v-for="n in length" :key="n">
          <v-card height="200px" class="d-flex justify-center align-center">
            <span class="text-h2">Card {{ n }}</span>
          </v-card>
        </v-window-item>
      </v-window>
    </v-sheet>

  </div>
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
import SearchPolaroidComponent from '../components/SearchPolaroidComponent.vue';
import FollowerService from '../services/FollowerService';
export default {
  data() {
    return {
      usersBands: [],
      displayedBands: [],
      filterQuery: '',
      user: this.$store.state.user,
      items: [
        { type: 'subheader', title: 'Today' },
        {
          prependAvatar: 'https://cdn.vuetifyjs.com/images/lists/1.jpg',
          title: 'Brunch this weekend?',
          subtitle: `<span class="text-primary">Ali Connors</span> &mdash; I'll be in your neighborhood doing errands this weekend. Do you want to hang out?`,
          paragraph: 'random test paragraph stuff'

        },
        {
          prependAvatar: 'https://cdn.vuetifyjs.com/images/lists/1.jpg',
          title: 'Brunch this weekend?',
          subtitle: `<span class="text-primary">Ali Connors</span> &mdash; I'll be in your neighborhood doing errands this weekend. Do you want to hang out?`,
          paragraph: 'random test paragraph stuff'

        },
        {
          prependAvatar: 'https://cdn.vuetifyjs.com/images/lists/1.jpg',
          title: 'Brunch this weekend?',
          subtitle: `<span class="text-primary">Ali Connors</span> &mdash; I'll be in your neighborhood doing errands this weekend. Do you want to hang out?`,
          paragraph: 'random test paragraph stuff'

        },
        { type: 'divider', inset: true },
        {
          prependAvatar: 'https://cdn.vuetifyjs.com/images/lists/2.jpg',
          title: 'Summer BBQ',
          subtitle: `<span class="text-primary">to Alex, Scott, Jennifer</span> &mdash; Wish I could come, but I'm out of town this weekend.`,
          paragraph: 'random test paragraph stuff'
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
  },
  components: { SearchPolaroidComponent }
};
</script>