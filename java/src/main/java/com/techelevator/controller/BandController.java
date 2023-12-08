package com.techelevator.controller;

import com.techelevator.dao.BandDao;
import com.techelevator.model.Band;
import com.techelevator.model.Genre;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class BandController {
    private BandDao bandDao;

    public BandController(BandDao bandDao) {
        this.bandDao = bandDao;
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
        return bandDao.getRandomBandsURL();
    }

    @GetMapping("/band/{id}")
    public Band getBand(@PathVariable int id) {
        return this.bandDao.getBandById(id);
    }


}
