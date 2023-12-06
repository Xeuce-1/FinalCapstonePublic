import axios from 'axios';


export default {

    getRandomImages() {
        return axios.get('/images');
    },

    getBandById(id) {
        return axios.get(`/band/${id}`);
    }

}
