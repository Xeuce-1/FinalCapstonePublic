package com.techelevator.dao;

import com.techelevator.model.Follower;

import java.util.List;

public interface FollowerDao {
    Follower getFollowerById(int id);

    Follower createFollower(int userId,  int bandId);
    int deleteFollowerById(int id);

    List<Follower> getFollowerByUserIdAndBandId(int userId, int bandId);
    boolean isUserFollowingBand(int userId, int bandId);
}
