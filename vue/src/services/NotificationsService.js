import axios from 'axios';

export default {
    getAllNotifications() {
        return axios.get('/notifications');
    }
}