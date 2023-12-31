package com.techelevator.model;

public class Follower {

    private int id;
    private int bandId;
    private int userId;

    private boolean following;

    public Follower() {

    }

    public Follower(int id, int bandId, int userId) {
        this.id = id;
        this.bandId = bandId;
        this.userId = userId;
    }
    private boolean isFollowing() {
        return following;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getBandId() {
        return bandId;
    }

    public void setBandId(int bandId) {
        this.bandId = bandId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    public boolean getFollowing() {
        return following;
    }
    public void setFollowing(boolean following) {
        this.following = following;
    }
}
