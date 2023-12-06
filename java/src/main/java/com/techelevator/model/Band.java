package com.techelevator.model;

public class Band {

    private int id;
    private String bandname;
    private String description;
<<<<<<< HEAD
    private int managerId;
=======
    private int managerid;
>>>>>>> 1a5518c2710a0c694318f118f30f35616a656f5b
    private String coverimageurl;

    public Band() {

    }


    public Band(int id, String bandname, String description, int mamagerid, String coverimageurl) {
        this.id=id;
        this.bandname=bandname;
<<<<<<< HEAD
        this.description =description;
        this.managerId =mamagerid;
=======
        this.description=description;
        this.managerid=mamagerid;
>>>>>>> 1a5518c2710a0c694318f118f30f35616a656f5b
        this.coverimageurl = coverimageurl;
    }


<<<<<<< HEAD
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
=======
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
>>>>>>> 1a5518c2710a0c694318f118f30f35616a656f5b
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
