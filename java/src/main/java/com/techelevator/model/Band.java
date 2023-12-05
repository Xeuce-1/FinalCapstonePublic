package com.techelevator.model;

public class Band {

    private int id;
    private String bandname;
    private String descripton;
    private int mamagerid;
    private String coverimageurl;

    public Band() {

    }


    public Band(int id, String bandname, String description, int mamagerid, String coverimageurl) {
        this.id=id;
        this.bandname=bandname;
        this.descripton=description;
        this.mamagerid=mamagerid;
        this.coverimageurl = coverimageurl;
    }


    public int getMamagerid() {
        return mamagerid;
    }

    public void setMamagerid(int mamagerid) {
        this.mamagerid = mamagerid;
    }

    public String getDescripton() {
        return descripton;
    }

    public void setDescripton(String descripton) {
        this.descripton = descripton;
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
