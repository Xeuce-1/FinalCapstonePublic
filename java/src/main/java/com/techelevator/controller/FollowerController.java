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

//    @GetMapping("/follower/{id}")
//    public Follower getFollower(@PathVariable int id) {
//        Follower follower = this.followerDao.getFollowerById(id);
//        follower.setFollowing(true);
//        return follower;
//    }
    @GetMapping("/follower")
    public List<Follower> getFollowersByUserIdAndBandId(@RequestParam int userId, @RequestParam int bandId) {
        List<Follower> followers = followerDao.getFollowerByUserIdAndBandId(userId, bandId);
        for (Follower follower : followers) {
            boolean isFollowing = followerDao.isUserFollowingBand(userId,bandId);
            follower.setFollowing(isFollowing);
        }
        return followers;
    }

    @GetMapping("/follower/{bandId}")
    public Follower checkIfUserIsAlreadyFollowing(Principal principal, @PathVariable int bandId) {
        User user = userDao.getUserByUsername(principal.getName());
        return followerDao.checkIfFollowed(user.getId(),bandId);
    }

    @GetMapping("/mybands/{id}")
    public List<Band> getUsersFollowedBands(@PathVariable int id) {
        return followerDao.getFollowedBandsById(id);
    }

    @PreAuthorize("isAuthenticated()")
    @PostMapping("/follower")
    public Follower create(@RequestBody Band band, Principal principal) {
        System.out.println(principal.getName());
        User user = userDao.getUserByUsername(principal.getName());
        int userId = user.getId();
        int bandId = band.getId();
        System.out.println(user.getId());
        System.out.println(band.getId());
        if (!followerDao.isUserFollowingBand(userId,bandId)) {
            return followerDao.createFollower(user.getId(), band.getId());
        }
        return null;
    }
    @PreAuthorize("isAuthenticated()")
    @DeleteMapping("/follower/{id}")
    public void deleteFollowerByUserIdAndBandId(Principal principal, @PathVariable int id) {
        User user = userDao.getUserByUsername(principal.getName());
        this.followerDao.deleteFollowerByUserIdAndBandId(user.getId(), id);
    }
}
