package com.techelevator.controller;

import com.techelevator.dao.FollowerDao;
import com.techelevator.model.Follower;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
@CrossOrigin
public class FollowerController {
    private FollowerDao followerDao;

    public FollowerController(FollowerDao followerDao) {
        this.followerDao = followerDao;
    }

    @GetMapping("/follower/{id}")
    public Follower getFollower(@PathVariable int id) {
        return this.followerDao.getFollowerById(id);
    }
    @PostMapping("/follower")
    public Follower create(@Valid @RequestBody Follower follower) {
        return followerDao.createFollower(follower);
    }
    @DeleteMapping("/follower/{id}")
    public void setFollowerDao(@PathVariable int id) {
        this.followerDao.deleteFollowerById(id);
    }


}
