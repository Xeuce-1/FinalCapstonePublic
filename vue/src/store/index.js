import { createStore as _createStore } from 'vuex';
import axios from 'axios';

export function createStore(currentToken, currentUser) {
  let store = _createStore({
    state: {
      band: {},
      token: currentToken || '',
      user: currentUser || {},
      followingBands: [],
      createBandHeroUrl: "",
      createBandGallery: [],

    },
    mutations: {
      SET_AUTH_TOKEN(state, token) {
        state.token = token;
        localStorage.setItem('token', token);
        axios.defaults.headers.common['Authorization'] = `Bearer ${token}`;
      },
      SET_USER(state, user) {
        state.user = user;
        localStorage.setItem('user', JSON.stringify(user));
      },
      LOGOUT(state) {
        localStorage.removeItem('token');
        localStorage.removeItem('user');
        state.token = '';
        state.user = {};
        axios.defaults.headers.common = {};
      },
      RANDOMBANDIMG(state, images) {
        state.images = images;

      },
      FOLLOW_BAND(state, bandId) {
        if (!state.followingBands.includes(bandId)) {
          state.followingBands.push(bandId);
        }
        console.log("Following bands after mutation:", state.followingBands);
      },
      UNFOLLOW_BAND(state, bandId) {
        state.followingBands = state.followingBands.filter(id => id !== bandId);
      },
<<<<<<< HEAD
      CREATE_BAND(state, newBand) {
        console.log(state.band)
        state.band = newBand;
      },
      SET_CREATE_BAND_HERO_URL(state, url) {
        state.createBandHeroUrl = url;
        console.log(state.createBandHeroUrl);
      },
      ADD_BAND_GALLERY(state, url) {
        console.log("running gallery mutation")
        state.createBandGallery.push(url);
        console.log(state.createBandGallery);
=======
      CREATE_BAND(state, band) {
        state.band = band;
>>>>>>> origin
      },
    },

    getters: {
      isBandFollowed: (state) => (bandId) => {
        return state.followingBands.includes(bandId);
      }
    },

  });
  return store;
}

