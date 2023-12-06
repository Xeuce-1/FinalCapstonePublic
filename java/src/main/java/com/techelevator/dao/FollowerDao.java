package com.techelevator.dao;

import com.techelevator.model.Follower;

public interface FollowerDao {
    Follower getFollowerById(int id);

    Follower createFollower(Follower follower);
    int deleteFollowerById(int id);
}
