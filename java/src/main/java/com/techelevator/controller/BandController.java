package com.techelevator.controller;

import com.techelevator.dao.BandDao;
import com.techelevator.model.Band;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class BandController {
    private BandDao bandDao;

    public BandController(BandDao bandDao) {
        this.bandDao = bandDao;
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
