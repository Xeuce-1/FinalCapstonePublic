package com.techelevator.dao;

import com.techelevator.exception.DaoException;
import com.techelevator.model.Band;
import com.techelevator.model.GalleryImage;
import com.techelevator.model.Genre;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcBandDao implements BandDao{


    private final JdbcTemplate jdbcTemplate;

    public JdbcBandDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }


    @Override
    public List<Band> getRandomBandsURL() {
        List<Band> bandsURL = new ArrayList<>();
        String sql = "SELECT band_id, cover_image_url " +
                "FROM bands " +
                "ORDER BY RANDOM() " +
                "LIMIT 6;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
            while(results.next()) {
                Band band = new Band();
                band.setId(results.getInt("band_id"));

                band.setCoverimageurl(results.getString("cover_image_url"));
                bandsURL.add(band);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }
        return bandsURL;
    }

    @Override
    public Band getBandById(int id) {
        List<GalleryImage> images = new ArrayList<>();
        List<Genre> genreList = new ArrayList<>();
        Band band = null;

        final String bandSql = "SELECT band_id, manager_id, bandname, description, cover_image_url\n" +
                "\tFROM bands WHERE band_id = ?;";

        final String gallerySql = "SELECT gallery_id, image_url\n" +
                "FROM gallery\n" +
                "WHERE band_id = ?;";

        final String genreSql = "SELECT g.genre_id, g.genre_name\n" +
                "FROM genres g\n" +
                "JOIN band_genres bg ON bg.genre_id = g.genre_id\n" +
                "JOIN bands b ON b.band_id = bg.band_id\n" +
                "WHERE b.band_id = ?;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(bandSql, id);
            if (results.next()) {

                SqlRowSet galleryResults = jdbcTemplate.queryForRowSet(gallerySql, id);
                SqlRowSet genreResults = jdbcTemplate.queryForRowSet(genreSql, id);

                while (galleryResults.next()) {
                    GalleryImage image = new GalleryImage();
                    image.setId(galleryResults.getInt("gallery_id"));
                    image.setUrl(galleryResults.getString("image_url"));
                    images.add(image);
                }
                while (genreResults.next()) {
                    Genre genre = new Genre();
                    genre.setId(genreResults.getInt("genre_id"));
                    genre.setName(genreResults.getString("genre_name"));
                    genreList.add(genre);
                }
                band = mapRowToBands(results);
                band.setGallery(images);
                band.setGenreList(genreList);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }
        return band;
    }

    @Override
    public List<Band> getAllBands() {
        List<Band> bandList = new ArrayList<>();
        String sql = "SELECT band_id, manager_id, bandname, description, cover_image_url\n" +
                "FROM bands;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
            while (results.next()) {
                bandList.add(mapRowToBands(results));
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }
        return bandList;
    }

    @Override
    public List<Genre> getAllGenres() {
        List<Genre> genreList = new ArrayList<>();
        String sql = "SELECT genre_id, genre_name\n" +
                "FROM genres;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
            while (results.next()) {
                genreList.add(mapRowToGenre(results));
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }
        return genreList;
    }

    @Override
    public List<Band> getBandByGenre(String genre) {
        List<Band> bandList = new ArrayList<>();
        String genreQuery = '%' + genre + '%';
        String sql = "SELECT b.band_id, b.manager_id, b.bandname, b.description, b.cover_image_url\n" +
                "FROM bands b\n" +
                "JOIN band_genres bg ON bg.band_id = b.band_id\n" +
                "JOIN genres g ON g.genre_id = bg.genre_id\n" +
                "WHERE g.genre_name ILIKE ?;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, genreQuery);

            while (results.next()) {
                bandList.add(mapRowToBands(results));
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }
        return bandList;
    }

    @Override
    public List<Band> getBandByName(String name) {
        List<Band> bandList = new ArrayList<>();
        String nameQuery = '%' + name + '%';
        String sql = "SELECT band_id, manager_id, bandname, description, cover_image_url\n" +
                "FROM bands\n" +
                "WHERE bandname ILIKE ?;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, nameQuery);
            while (results.next()) {
                bandList.add(mapRowToBands(results));
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }
        return bandList;
    }

    private Band mapRowToBands(SqlRowSet rs) {
        Band band = new Band();
        band.setId(rs.getInt("band_id"));
        band.setBandName(rs.getString("bandname"));
        band.setDescription(rs.getString("description"));
        band.setManagerId(rs.getInt("manager_id"));
        band.setCoverimageurl(rs.getString("cover_image_url"));
        return band;
    }

    private Genre mapRowToGenre(SqlRowSet rowset) {
        Genre genre = new Genre();
        genre.setId(rowset.getInt("genre_id"));
        genre.setName(rowset.getString("genre_name"));
        return genre;
    }
}
