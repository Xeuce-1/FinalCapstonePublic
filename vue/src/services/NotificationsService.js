import axios from 'axios';

export default {
    getAllNotificationsForUser() {
        return axios.get("/notifications");
    }
}