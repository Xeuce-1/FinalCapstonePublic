import axios from 'axios';

export default {
    getAllNotificationsForUser() {
        return axios.get("/notifications");
    },
    sendBandNotification(notification) {
        return axios.post("/notifications", notification);
    }
}