package com.techelevator.dao;

import com.techelevator.model.Follower;

public interface FollowerDao {
    Follower getFollowerById(int id);

    Follower createFollower(int userId,  int bandId);
    int deleteFollowerById(int id);
}
