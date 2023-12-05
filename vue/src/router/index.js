import { createRouter as createRouter, createWebHistory } from 'vue-router'
import { useStore } from 'vuex'

// Import components
import LandingView from '../views/LandingView.vue'
import HomeView from '../views/HomeView.vue';
import LoginView from '../views/LoginView.vue';
import LogoutView from '../views/LogoutView.vue';
import RegisterView from '../views/RegisterView.vue';
import BandPageView from '../views/BandPageView.vue';
import BandGalleryView from '../views/BandGalleryView.vue'

// Import layouts
import DefaultLayout from '../layouts/default/DefaultLayout.vue'

/**
 * The Vue Router is used to "direct" the browser to render a specific view component
 * inside of App.vue depending on the URL.
 *
 * It also is used to detect whether or not a route requires the user to have first authenticated.
 * If the user has not yet authenticated (and needs to) they are redirected to /login
 * If they have (or don't need to) they're allowed to go about their way.
 */
const routes = [
  {
    path: "/",
    name: "default",
    component: DefaultLayout,
    meta: {
      requiresAuth: false
    },
    children: [{
      path: "",
      name: "landing",
      component: LandingView
    },
    {
      path: '/home',
      name: 'home',
      component: HomeView,
      meta: {
        requiresAuth: true
      }
    },
    {
      path: "/login",
      name: "login",
      component: LoginView,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/logout",
      name: "logout",
      component: LogoutView,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/register",
      name: "register",
      component: RegisterView,
      meta: {
        requiresAuth: false
      }
    },
    {
      // add id back
      path: "/band",
      name: 'band',
      component: BandPageView,
      meta: {
        requiresAuth: false
      }
    },
    // TODO add id
    {
      path: "/band/gallery",
      name: 'gallery',
      component: BandGalleryView,
      meta: {
        requiresAuth: true
      }
    }

    ]
  }
];

// Create the router
const router = createRouter({
  history: createWebHistory(),
  routes: routes
});

router.beforeEach((to) => {

  // Get the Vuex store
  const store = useStore();

  // Determine if the route requires Authentication
  const requiresAuth = to.matched.some(x => x.meta.requiresAuth);

  // If it does and they are not logged in, send the user to "/login"
  if (requiresAuth && store.state.token === '') {
    return { name: "login" };
  }
  // Otherwise, do nothing and they'll go to their next destination
});

export default router;
