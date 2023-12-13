import { createApp } from 'vue'
import CapstoneApp from './App.vue'
import { createStore } from './store'
import router from './router'
import axios from 'axios'

// Vuetify
import 'vuetify/styles'
import { createVuetify } from 'vuetify'
import * as components from 'vuetify/components'
import * as directives from 'vuetify/directives'
import { aliases, mdi } from 'vuetify/iconsets/mdi'


// THEMES
const customDefaultTheme = {
  dark: false,
  colors: {
    // background: '',
    // background: 'linear-gradient(36deg, rgba(187, 239, 255, 1) 0 %, rgba(217, 200, 232, 1) 100 %)',
    surface: '#FFFFFF',
    primary: '#0081A7',
    secondary: '#00AFB9',
    button: '#F26419',
    error: '#f6ae2d',
    info: '#2196F3',
    success: '#4CAF50',
    warning: '#FB8C00',
  },
}

const BLUES = {
  dark: false,
  colors: {
    background: '#E9F7F8',
    surface: '#C3ECEF',
    primary: '#22B2BD',
    secondary: '#00B894',
    button: '#FFC107',
    error: '#B00020',
    info: '#2196F3',
    success: '#4CAF50',
    warning: '#FB8C00',
  },
}

const vuetify = createVuetify({
  components,
  directives,
  icons: {
    defaultSet: 'mdi',
    aliases,
    sets: {
      mdi,
    },
  },
  theme: {
    defaultTheme: "customDefaultTheme",
    themes: {
      customDefaultTheme,
      BLUES
    }
  }
})

/* sets the base url for server API communication with axios */
axios.defaults.baseURL = import.meta.env.VITE_REMOTE_API;

/*
 * The authorization header is set for axios when you login but what happens when 
 * you come back or the page is refreshed. When that happens you need to check 
 * for the token in local storage and if it exists you should set the header 
 * so that it will be attached to each request.
 */
let currentToken = localStorage.getItem('token');
let currentUser = JSON.parse(localStorage.getItem('user'));

if (currentToken) {
  // Set token axios requests
  axios.defaults.headers.common['Authorization'] = `Bearer ${currentToken}`;
}

// Create the Vuex store passing in the stored credentials
const store = createStore(currentToken, currentUser);

const app = createApp(CapstoneApp);
app.use(store);
app.use(router);
app.use(vuetify);
app.mount('#app');

