package com.techelevator.dao;

import com.techelevator.exception.DaoException;
import com.techelevator.model.Follower;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcFollowerDao implements FollowerDao{
    private final JdbcTemplate jdbcTemplate;

    public JdbcFollowerDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate= jdbcTemplate;
    }


    @Override
    public Follower getFollowerById(int id) {
        Follower follower = null;
        String sql = "SELECT band_id, user_id FROM follower WHERE follower_id = ?;";
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
    public Follower createFollower(Follower follower) {
        Follower newFollower = null;
        String sql = "INSERT INTO follower(band_id, user_id) VALUES (?, ?) RETURNING follower_id, band_id, user_id;";

        try {
            int newFollowerId = jdbcTemplate.queryForObject(sql, int.class,
                    follower.getBandId(),
                    follower.getUserId());
            newFollower = getFollowerById(newFollowerId);
        }catch (CannotGetJdbcConnectionException e) {
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
            numberOfRows = jdbcTemplate.update(deleteFollowersql,id);
        }catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        } catch (DataIntegrityViolationException e) {
            throw new DaoException("Data integrity violation", e);
        }
        return numberOfRows;


    }

    private Follower mapRowToFollower(SqlRowSet rs) {
        Follower follower = new Follower();
        follower.setId(rs.getInt("follower_id"));
        follower.setBandId(rs.getInt("band_id"));
        follower.setUserId(rs.getInt("user_id"));
        return follower;
    }




}
