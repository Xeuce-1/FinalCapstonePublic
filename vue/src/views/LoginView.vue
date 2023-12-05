<template>
  <v-card class="d-flex justify-center align-center h-screen mt-n16">
    <v-card elevation="12" max-width="600" rounded="lg" width="100%" class="pa-4 text-center mx-auto">
      <v-alert v-if="invalidCredentials" type="error" density=“compact” closable>{{ invalidCredentialsMsg }}</v-alert>

      <v-form @submit.prevent="login">
        <h1>Please Sign In</h1>

        <!-- USERNAME INPUT -->
        <v-text-field prepend-icon="mdi-account" label="Username" v-model="user.username" :rules="usernameRules"
          class="pa-2"></v-text-field>

        <!-- PASSWORD INPUT -->
        <v-text-field prepend-icon="mdi-lock" label="Password" v-model="user.password" type="password"
          :rules="passwordRules" class="pa-2"></v-text-field>

        <!-- SUBMIT BUTTON -->
        <div class="pa-2">
          <v-btn block type="submit" color="#f26419" @click.stop="login">Sign In</v-btn>
        </div>
        <div class="pa-2">
          <v-btn block color="#00afb9" @click.stop="toRegistrationPage">Need an account? Sign up.</v-btn>
        </div>
      </v-form>
    </v-card>
  </v-card>

  <!--
  <div id="login">
    <form v-on:submit.prevent="login">
      <h1>Please Sign In</h1>
      <div role="alert" v-if="invalidCredentials">
        Invalid username or password!
      </div>
      <div role="alert" v-if="this.$route.query.registration">
        Thank you for registering, please sign in.
      </div>
      <div class="form-input-group">
        <label for="username">Username</label>
        <input type="text" id="username" v-model="user.username" required autofocus />
      </div>
      <div class="form-input-group">
        <label for="password">Password</label>
        <input type="password" id="password" v-model="user.password" required />
      </div>

      <button type="submit">Sign in</button>
      <p>
        <router-link v-bind:to="{ name: 'register' }">Need an account? Sign up.</router-link>
      </p>
    </form>
  </div>
  -->
</template>

<script>
import authService from "../services/AuthService";

export default {
  components: {},
  data() {
    return {
      usernameRules: [
        v => !!v || 'Username is required.',
        v => (v && /[@]/.test(v)) || 'Username must be a valid email.',

      ],
      passwordRules: [
        v => !!v || 'Password is required.',
      ],
      user: {
        username: "",
        password: ""
      },
      invalidCredentials: false,
      invalidCredentialsMsg: 'Login failed'
    };
  },
  methods: {
    toRegistrationPage() {
      this.$router.push({ name: 'register' })
    },
    login() {
      authService
        .login(this.user)
        .then(response => {
          if (response.status == 200) {
            this.$store.commit("SET_AUTH_TOKEN", response.data.token);
            this.$store.commit("SET_USER", response.data.user);
            this.$router.push("/home");
          }
        })
        .catch(error => {
          const response = error.response;

          if (response.status === 401) {
            this.invalidCredentials = true;
          }
        });
    }
  }
};
</script>

<style scoped>
.form-input-group {
  margin-bottom: 1rem;
}

label {
  margin-right: 0.5rem;
}
</style>