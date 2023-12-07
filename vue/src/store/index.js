import { createStore as _createStore } from 'vuex';
import axios from 'axios';

export function createStore(currentToken, currentUser) {
  let store = _createStore({
    state: {
      token: currentToken || '',
      user: currentUser || {},
      followingBands: [],

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
        state.followingBands.push(bandId);
      },

      UNFOLLOW_BAND(state, bandId) {
        state.followingBands = state.followingBands.filter(id => id !== bandId);
      }
    },
    getters: {
      isBandFollowed: (state) => (bandId) => {
        return state.followingBands.includes(bandId);
      }
    }

  });
  return store;
}
