package com.techelevator.dao;

import com.techelevator.model.GalleryImage;

public interface GalleryImageDao {
    GalleryImage getGalleryById(int id);
    GalleryImage createGalleryImage(int bandId, String imageURL);
}
