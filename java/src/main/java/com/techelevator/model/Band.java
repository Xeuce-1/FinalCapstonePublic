package com.techelevator.model;

public class Band {

    private int id;
    private String bandname;
    private String description;
    private int managerId;
    private String coverimageurl;

    public Band() {

    }


    public Band(int id, String bandname, String description, int mamagerid, String coverimageurl) {
        this.id=id;
        this.bandname=bandname;
        this.description =description;
        this.managerId =mamagerid;
        this.coverimageurl = coverimageurl;
    }


    public int getManagerId() {
        return managerId;
    }

    public void setManagerId(int managerId) {
        this.managerId = managerId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getBandName() {
        return bandname;
    }

    public void setBandName(String name) {
        this.bandname = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCoverimageurl() {
        return coverimageurl;
    }

    public void setCoverimageurl(String coverimageurl) {
        this.coverimageurl = coverimageurl;
    }
}
