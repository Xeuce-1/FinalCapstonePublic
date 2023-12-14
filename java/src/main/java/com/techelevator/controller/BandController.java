package com.techelevator.controller;

import com.techelevator.dao.BandDao;
import com.techelevator.dao.UserDao;
import com.techelevator.model.Band;
import com.techelevator.model.GalleryImage;
import com.techelevator.model.Genre;
import com.techelevator.model.User;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;

@RestController
@CrossOrigin
public class BandController {
    final private BandDao bandDao;
    final private UserDao userDao;

    public BandController(BandDao bandDao, UserDao userDao) {
        this.bandDao = bandDao;
        this.userDao = userDao;
    }

    @GetMapping("/bands")
    public List<Band> getAllBands(@RequestParam(required = false) String genre, @RequestParam(required = false) String bandName) {
        if (genre != null && bandName == null) {
            return bandDao.getBandByGenre(genre);
        } else if (genre == null && bandName != null){
            return bandDao.getBandByName(bandName);
        } else {
            return bandDao.getAllBands();
        }
    }

    @GetMapping("/genres")
    public List<Genre> getAllGenres() {
        return bandDao.getAllGenres();
    }

    @GetMapping("/images")
    public List<Band> getRandomBandsURL() {
        return bandDao.getRandomBands();
    }

    @GetMapping("/band/{id}")
    public Band getBand(@PathVariable int id) {
        return this.bandDao.getBandById(id);
    }

    @GetMapping("/homegallery/{id}")
    public List<GalleryImage> getImages(@PathVariable int id) {
        return bandDao.getFollowedBandGalleryImagesByUserId(id);
    }

    @GetMapping("/topGenre/{id}")
    public String getTopGenre(@PathVariable int id) {
//        User user = userDao.getUserByUsername(principal.getName());
        return bandDao.getTopGenre(id);
    }

    @GetMapping("/bandsfollowed/{id}")
    public int numberOfBandsFollowed(@PathVariable int id) {
        return bandDao.numberOfBandsFollowed(id);
    }

    @PreAuthorize("isAuthenticated()") //add principal to assign logged in user as the band manager??
    @PostMapping("/bands")
    public Band createBand(@RequestBody Band band, Principal principal) {
        System.out.println(principal.getName());
        System.out.println(userDao.getUserByUsername(principal.getName()));
        User user = userDao.getUserByUsername(principal.getName());
        System.out.println(user.getId());
        System.out.println(band.getBandName());
        System.out.println(band.getDescription());
        System.out.println(band.getCoverimageurl());
        System.out.println(band.getGallery());
        System.out.println(band.getGenreList());
        Band newBand = bandDao.createBand(user.getId(), band.getBandName(), band.getDescription(), band.getCoverimageurl(), band.getGallery(), band.getGenreList());
        return newBand;
    }
}
