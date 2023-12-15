package com.techelevator.dao;

import com.techelevator.model.Band;
import com.techelevator.model.Follower;

import java.util.List;

public interface FollowerDao {
    Follower getFollowerById(int id);

    Follower createFollower(int userId,  int bandId);
    int deleteFollowerByUserIdAndBandId(int userId, int id);

    List<Follower> getFollowerByUserIdAndBandId(int userId, int bandId);
    boolean isUserFollowingBand(int userId, int bandId);

    Follower checkIfFollowed(int userId, int bandId);


    List<Band> getFollowedBandsById(int userId);

    int bandsFollowed(int userId);
}
