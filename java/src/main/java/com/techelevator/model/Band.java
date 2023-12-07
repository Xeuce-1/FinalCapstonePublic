package com.techelevator.model;

import java.util.List;

public class Band {

    private int id;
    private String bandname;
    private String description;
    private int managerId;
    private String coverimageurl;

    private List<GalleryImage> gallery;



    private List<Genre> genreList;

    public Band() {

    }



    public Band(int id, String bandname, String description, int mamagerid, String coverimageurl) {
        this.id = id;
        this.bandname = bandname;
        this.description = description;
        this.managerId = mamagerid;
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
    public int getManagerid() {
        return managerId;
    }

    public void setManagerid(int managerId) {
        this.managerId = managerId;
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

    public List<GalleryImage> getGallery() {
        return gallery;
    }

    public void setGallery(List<GalleryImage> gallery) {
        this.gallery = gallery;
    }

    public void addGalleryImage(GalleryImage image) {
        this.gallery.add(image);
    }

    public List<Genre> getGenreList() {
        return genreList;
    }

    public void setGenreList(List<Genre> genreList) {
        this.genreList = genreList;
    }
}
