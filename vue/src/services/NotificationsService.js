import axios from 'axios';

export default {
    getAllNotifications(userId) {
        return axios.get(`/notifications/${userId}`);
    }
}