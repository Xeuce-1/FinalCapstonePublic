package com.techelevator.dao;

import com.techelevator.model.BandGenres;

public interface BandGenresDao {
    BandGenres createBandGenres(int bandId, int genreId);
    BandGenres getBandGenresByBGID(int id);

}
