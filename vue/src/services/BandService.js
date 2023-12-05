import axios from 'axios';


export default {

    getRandomImages() {
        return axios.get('/images');

    }



}
