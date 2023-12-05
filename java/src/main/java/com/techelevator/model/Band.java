package com.techelevator.model;

public class Band {

    private int id;
    private String bandname;
    private String description;
    private int managerid;
    private String coverimageurl;

    public Band() {

    }


    public Band(int id, String bandname, String description, int mamagerid, String coverimageurl) {
        this.id=id;
        this.bandname=bandname;
        this.description=description;
        this.managerid=mamagerid;
        this.coverimageurl = coverimageurl;
    }


    public int getMamagerid() {
        return managerid;
    }

    public void setMamagerid(int mamagerid) {
        this.managerid = mamagerid;
    }

    public String getDescripton() {
        return description;
    }

    public void setDescripton(String descripton) {
        this.description = descripton;
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
