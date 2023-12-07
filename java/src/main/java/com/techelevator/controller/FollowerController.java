package com.techelevator.controller;

import com.techelevator.dao.FollowerDao;
import com.techelevator.dao.UserDao;
import com.techelevator.model.Band;
import com.techelevator.model.Follower;
import com.techelevator.model.User;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.security.Principal;
import java.util.List;

@RestController
@CrossOrigin
public class FollowerController {
    private FollowerDao followerDao;
    private UserDao userDao;

    public FollowerController(FollowerDao followerDao, UserDao userDao) {
        this.followerDao = followerDao;
        this.userDao = userDao;
    }

    @GetMapping("/follower/{id}")
    public Follower getFollower(@PathVariable int id) {
        Follower follower = this.followerDao.getFollowerById(id);
        follower.setFollowing(true);
        return follower;
    }
    @GetMapping("/follower")
    public List<Follower> getFollowersByUserIdAndBandId(@RequestParam int userId, @RequestParam int bandId) {
        List<Follower> followers = followerDao.getFollowerByUserIdAndBandId(userId, bandId);
        for (Follower follower : followers) {
            boolean isFollowing = true;
            follower.setFollowing(isFollowing);
        }
        return followers;
    }

    @PreAuthorize("isAuthenticated()")
    @PostMapping("/follower")
    public Follower create(@RequestBody Band band, Principal principal) {
        System.out.println(principal.getName());
        User user = userDao.getUserByUsername(principal.getName());
        System.out.println(user.getId());
        System.out.println(band.getId());
        return followerDao.createFollower(user.getId(), band.getId());
    }
    @DeleteMapping("/follower/{id}")
    public void setFollowerDao(@PathVariable int id) {
        this.followerDao.deleteFollowerById(id);
    }


}
