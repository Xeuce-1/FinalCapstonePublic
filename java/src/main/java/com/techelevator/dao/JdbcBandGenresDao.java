package com.techelevator.dao;

import com.techelevator.exception.DaoException;
import com.techelevator.model.BandGenres;
import com.techelevator.model.GalleryImage;
import com.techelevator.model.Genre;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

public class JdbcBandGenresDao implements BandGenresDao{
    private final JdbcTemplate jdbcTemplate;

    public JdbcBandGenresDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public BandGenres createBandGenres(int bandId, int genreId) {
        BandGenres bandGenres;
        String sql = "INSERT INTO bands_genre (band_id, genre_id) " +
                "VALUES (?, ?)";
        try {
            int newBandGenresId = jdbcTemplate.queryForObject(sql, int.class, bandId, genreId);
           bandGenres = getBandGenresByBGID(newBandGenresId);
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        } catch (DataIntegrityViolationException e) {
            throw new DaoException("Data integrity violation", e);
        }
        return bandGenres;
    }

    @Override
    public BandGenres getBandGenresByBGID(int id) {
        BandGenres bandGenres = null;
        String sql = "SELECT (id, band_id, genre_id) FROM band_genres WHERE id = ?";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, id);
            while (results.next()) {
                bandGenres = mapRowToBandGenres(results);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }
        return bandGenres;
    }

    private BandGenres mapRowToBandGenres(SqlRowSet rs) {
        BandGenres bandGenres = new BandGenres();
        bandGenres.setBandId(rs.getInt("band_id"));
        bandGenres.setGenreId(rs.getInt("genre_id"));
        return bandGenres;
    }
}
