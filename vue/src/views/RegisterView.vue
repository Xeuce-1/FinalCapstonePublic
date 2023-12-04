<template>
  <v-card class="d-flex justify-center align-center h-screen mt-n16">
    <v-card elevation="12" max-width="600" rounded="lg" width="100%"
      class="pa-4 text-center mx-auto align-center justify-center">
      <!-- <div id="register" class="text-center"> -->
      <v-alert v-if="registrationErrors" type="error" density=“compact” closable>{{ registrationErrorMsg }}</v-alert>

      <v-form @submit.prevent="register()">
        <h1>Create Account</h1>

        <!-- USERNAME INPUT -->
        <v-text-field label="Username" v-model="user.username" :rules="usernameRules" id="username"></v-text-field>

        <!-- PASSWORD INPUT -->
        <v-text-field label="Password" type="password" v-model="user.password" :rules="passwordRules"
          id="password"></v-text-field>

        <!-- CONFIRM PASSWORD INPUT -->
        <v-text-field label="Confirm Password" type="password" v-model="user.confirmPassword" id="confirmPassword"
          validate-on="blur" :rules="confirmPasswordRules"></v-text-field>

        <!-- SUBMIT BUTTON -->
        <div class="pa-3">
          <v-btn block type="submit" color="#f26419"> Create Account </v-btn>
        </div>
        <div class="pa-3">
          <v-btn block color="#00afb9" @click.stop="toLoginPage">Already have an account? Log in.</v-btn>
        </div>

        <!-- registration message -->
      </v-form>
      <!-- </div> -->
    </v-card>
  </v-card>
  <!--
  <div id="register" class="text-center">
    <v-form v-on:submit.prevent="register">
      <h1>Create Account</h1>
      <div role="alert" v-if="registrationErrors">
        {{ registrationErrorMsg }}
      </div>
      <div class="form-input-group">
        <label for="username">Username</label>
        <input type="text" id="username" v-model="user.username" required autofocus />
      </div>
      <div class="form-input-group">
        <label for="password">Password</label>
        <input type="password" id="password" v-model="user.password" required />
      </div>
      <div class="form-input-group">
        <label for="confirmPassword">Confirm Password</label>
        <input type="password" id="confirmPassword" v-model="user.confirmPassword" required />
      </div>
      <button type="submit">Create Account</button>
      <p><router-link v-bind:to="{ name: 'login' }">Already have an account? Log in.</router-link></p>
    </v-form>
  </div>
-->
</template>

<script>
import authService from '../services/AuthService';

export default {
  data() {
    return {
      user: {
        username: '',
        password: '',
        confirmPassword: '',
        role: 'user',
      },
      registrationErrors: false,
      registrationErrorMsg: 'There were problems registering this user.',
      usernameRules: [
        value => {
          if (value) return true

          return 'You must enter a valid email address.'
        }
      ],
      passwordRules: [
        v => !!v || 'Password is required',
        v => (v && v.length >= 8) || 'Password must be at least 8 characters',
        v => (v && v.length <= 20) || 'Password must be less than 20 characters',
        v => (v && /[A-Z]/.test(v)) || 'Password must contain at least 1 uppercase letter',
        v => (v && /[a-z]/.test(v)) || 'Password must contain at least 1 lowercase letter',
        v => (v && /[0-9]/.test(v)) || 'Password must contain at least 1 number',
      ],
      confirmPasswordRules: [
        () => {
          if (this.user.password === this.user.confirmPassword) return true
          return 'Password & Confirm Password do not match.'
        }
      ]
    };
  },
  methods: {
    toLoginPage() {
      this.$router.push({ name: 'login' });
    },
    register() {
      if (this.user.password != this.user.confirmPassword) {
        this.registrationErrors = true;
        this.registrationErrorMsg = 'Registration failure: passwords do not match.';
      } else {
        authService
          .register(this.user)
          .then((response) => {
            if (response.status == 201) {
              this.$router.push({
                path: '/login',
                query: { registration: 'success' },
              });
            }
          })
          .catch((error) => {
            const response = error.response;
            this.registrationErrors = true;
            if (response.status === 400) {
              this.registrationErrorMsg = 'Bad Request: Validation Errors';
            }
          });
      }
    },
    clearErrors() {
      this.registrationErrors = false;
      this.registrationErrorMsg = 'There were problems registering this user.';
    },
  },
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
