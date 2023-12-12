package com.techelevator.dao;

import com.techelevator.model.Band;
import com.techelevator.model.GalleryImage;
import com.techelevator.model.Genre;

import java.util.List;

public interface BandDao {


//    List<Band> getBands();
//
    Band getBandById(int id);
    List <Band> getRandomBandsURL();
    List<Band> getAllBands();
    List<Genre> getAllGenres();
    List<Band> getBandByGenre(String genre);
    List<Band> getBandByName(String name);


    List<GalleryImage> getFollowedBandGalleryImagesByUserId(int userId);

    Band createBand(int managerId, String bandname, String description, String coverimageurl, List<GalleryImage> gallery, List<Genre> genre);
}
