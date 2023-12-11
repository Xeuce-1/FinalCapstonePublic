import axios from "axios";

export default {
    getFollowerById(id) {
        return axios.get(`/follower/${id}`)
            .then(response => response.data.following)
            .catch(error => {
                console.log("Error fetching follower data:", error);
                throw error;
            })
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
            .catch(error => {
                if (error.response.status === 400 && error.response.data === "User is already following the band") {
                    return null;
                }
                throw error;
            });
    },
    unfollowBand(id) {
        return axios.delete(`/follower/${id}`)
            .then(response => {
                return response.data;
            })
    },
    getUsersFollowers(userId) {
        return axios.get(`/mybands/${userId}`);
    }
}