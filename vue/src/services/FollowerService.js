import axios from "axios";

export default {
    getFollowerById(id) {
        return axios.get(`/follower/${id}`);
    },

    createFollower(follower) {
        return axios.post('/follower');
    },

    deleteFollower(id) {
        return axios.delete(`/follower/${id}`);
    },

    followBand(userId, bandId) {
        return axios.post('/follower', { userId, bandId })
            .then(response => {
                return response.data;
            })

    }


}