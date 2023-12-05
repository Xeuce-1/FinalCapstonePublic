package com.techelevator.dao;

import com.techelevator.model.Band;

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



}
