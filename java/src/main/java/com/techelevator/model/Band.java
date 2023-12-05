package com.techelevator.model;

public class Band {

    private int id;
    private String bandname;
    private String descripton;
    private int mamagerid;

    public Band() {

    }


    public Band(int id, String bandname, String description, int mamagerid) {
        this.id=id;
        this.bandname=bandname;
        this.descripton=description;
        this.mamagerid=mamagerid;
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
}
