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

    followBand(band) {
        return axios.post('/follower', band)
            .then(response => {
                return response.data;
            })

    },

    unfollowBand(id) {
        return axios.delete(`/follower/${id}`)
            .then(response => {
                return response.data;
            })
    }


}