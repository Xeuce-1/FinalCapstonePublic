package com.techelevator.dao;

import com.techelevator.exception.DaoException;
import com.techelevator.model.GalleryImage;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;


@Component
public class JdbcGalleryImageDao implements GalleryImageDao {

    private final JdbcTemplate jdbcTemplate;


    public JdbcGalleryImageDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public GalleryImage createGalleryImage(int bandId, String imageURL) {
        GalleryImage newGalleryImage;
        String sql = "INSERT INTO gallery (band_id, image_url) " +
                "VALUES (?, ?)";
        try {
            int newGalleryImageId = jdbcTemplate.queryForObject(sql, int.class, bandId, imageURL);
            newGalleryImage = getGalleryById(newGalleryImageId);
            } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        } catch (DataIntegrityViolationException e) {
            throw new DaoException("Data integrity violation", e);
        }
        return newGalleryImage;
    }

    @Override
    public GalleryImage getGalleryById(int id) {
        GalleryImage galleryImage = null;
        String sql = "SELECT gallery_id, band_id, image_url FROM gallery WHERE gallery_id = ?";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, id);
            while (results.next()) {
                galleryImage = mapRowToGallery(results);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }
        return galleryImage;
    }



    private GalleryImage mapRowToGallery(SqlRowSet rs) {
        GalleryImage galleryImage = new GalleryImage();
        galleryImage.setBandId(rs.getInt("band_id")); //Ask patrick about this - I think this is getting the gallery id, not band??
        galleryImage.setUrl(rs.getString("image_url"));
        return galleryImage;
    }


}
