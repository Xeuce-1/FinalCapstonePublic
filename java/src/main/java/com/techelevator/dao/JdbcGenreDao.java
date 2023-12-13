package com.techelevator.dao;

import com.techelevator.exception.DaoException;
import com.techelevator.model.GalleryImage;
import com.techelevator.model.Genre;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

public class JdbcGenreDao implements GenreDao{
    private final JdbcTemplate jdbcTemplate;

    public JdbcGenreDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public Genre createGenre(String genre_name) {
        Genre newGenre;
        String sql = "INSERT INTO genre (genre_name) " +
                "VALUES (?)";
        try {
            int newGenreId = jdbcTemplate.queryForObject(sql, int.class, genre_name);
            newGenre = getGenreById(newGenreId);
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        } catch (DataIntegrityViolationException e) {
            throw new DaoException("Data integrity violation", e);
        }
        return newGenre;
    }

    @Override
    public Genre getGenreByName(String name) {
        Genre genre = null;
        String sql = "SELECT genre_id, genre_name FROM genres WHERE genre_name = ?;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, name);
            if (results.next()) {
                genre = mapRowToGenre(results);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }
        return genre;
    }

    @Override
    public Genre getGenreById(int id) {
        Genre genre = null;
        String sql = "SELECT genre_id, genre_name FROM genres WHERE genre_id = ?";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, id);
            if (results.next()) {
                genre = mapRowToGenre(results);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }
        return genre;
    }


    private Genre mapRowToGenre(SqlRowSet rs) {
        Genre genre = new Genre();
        genre.setName(rs.getString("genre_name"));
        return genre;
    }


}
