package com.techelevator.dao;

import com.techelevator.model.Band;
import com.techelevator.model.Genre;

import java.util.List;

public interface BandDao {


//    List<Band> getBands();
//
    Band getBandById(int id);
//
//    Band getBandsbyName();
//    Band createBand();
//    Band updateBand();

    List <Band> getRandomBandsURL();


    List<Band> getAllBands();

    List<Genre> getAllGenres();

    List<Band> getBandByGenre(String genre);

    List<Band> getBandByName(String name);
}
