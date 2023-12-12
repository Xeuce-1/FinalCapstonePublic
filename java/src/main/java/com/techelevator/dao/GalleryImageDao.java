package com.techelevator.dao;

import com.techelevator.model.GalleryImage;

import java.util.List;

public interface GalleryImageDao {
    GalleryImage getGalleryById(int id);
    GalleryImage createGalleryImage(int bandId, String imageURL);

    List<GalleryImage> getGalleryImagesForBandsFollowedByUserId(int userId);
}
