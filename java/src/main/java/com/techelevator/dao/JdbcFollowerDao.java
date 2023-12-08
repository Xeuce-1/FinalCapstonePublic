package com.techelevator.dao;

import com.techelevator.exception.DaoException;
import com.techelevator.model.Band;
import com.techelevator.model.Follower;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcFollowerDao implements FollowerDao {
    private final JdbcTemplate jdbcTemplate;

    public JdbcFollowerDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public Follower getFollowerById(int id) {
        Follower follower = null;
        String sql = "SELECT follower_id, band_id, user_id FROM follower WHERE follower_id = ?;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, id);
            if (results.next()) {
                follower = mapRowToFollower(results);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }
        return follower;
    }

    @Override
    public Follower createFollower(int userId, int bandId) {
        if (isUserFollowingBand(userId, bandId)) {
            throw new DaoException("User is already following the band");
        }
        Follower newFollower = null;
        String sql = "INSERT INTO follower(band_id, user_id) VALUES (?, ?);";

        try {
            int newFollowerId = jdbcTemplate.update(sql,
                    bandId,
                    userId);
            newFollower = getFollowerById(newFollowerId);
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        } catch (DataIntegrityViolationException e) {
            throw new DaoException("Data integrity violation", e);
        }
        return newFollower;
    }

    @Override
    public int deleteFollowerById(int id) {
        int numberOfRows = 0;
        String deleteFollowersql = "DELETE FROM follower WHERE follower_id = ?;";

        try {
            numberOfRows = jdbcTemplate.update(deleteFollowersql, id);
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        } catch (DataIntegrityViolationException e) {
            throw new DaoException("Data integrity violation", e);
        }
        return numberOfRows;
    }

    public boolean isUserFollowingBand(int userId, int bandId) {
        List<Follower> followers = getFollowerByUserIdAndBandId(userId, bandId);
        return !followers.isEmpty();
    }

    public List<Follower> getFollowerByUserIdAndBandId(int userId, int bandId) {
        List<Follower> followers = new ArrayList<>();
        String sql = "SELECT follower_id, user_id, band_id FROM follower WHERE user_id = ? AND band_id = ?";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userId, bandId);
            while (results.next()) {
                Follower follower = mapRowToFollower(results);
                followers.add(follower);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }
        return followers;
    }

    @Override
    public List<Band> getFollowedBandsById(int userId) {
        List<Band> followedBands = new ArrayList<>();
        String sql = "SELECT b.band_id, b.manager_id, b.bandname, b.description, b.cover_image_url \n" +
                "FROM bands b\n" +
                "JOIN follower f ON f.band_id = b.band_id\n" +
                "WHERE f.user_id = ?\n" +
                "ORDER BY b.bandname;";

        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userId);
            while (results.next()) {
                Band band = new Band();
                band.setId(results.getInt("band_id"));
                band.setBandName(results.getString("bandname"));
                band.setDescription(results.getString("description"));
                band.setManagerId(results.getInt("manager_id"));
                band.setCoverimageurl(results.getString("cover_image_url"));
                followedBands.add(band);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }
        return followedBands;
    }

    private Follower mapRowToFollower(SqlRowSet rs) {
        Follower follower = new Follower();
        follower.setId(rs.getInt("follower_id"));
        follower.setBandId(rs.getInt("band_id"));
        follower.setUserId(rs.getInt("user_id"));
        return follower;
    }


}
