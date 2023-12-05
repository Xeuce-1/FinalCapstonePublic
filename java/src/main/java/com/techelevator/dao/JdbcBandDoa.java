package com.techelevator.dao;

import com.techelevator.exception.DaoException;
import com.techelevator.model.Band;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcBandDoa implements BandDao{


    private final JdbcTemplate jdbcTemplate;

    public JdbcBandDoa(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public List<Band> getRandomBandsURL() {
        List<Band> bandsURL = new ArrayList<>();
        String sql = "SELECT cover_image_url" +
                "FROM bands" +
                "ORDER BY RANDOM()" +
                "LIMIT 6;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
            while(results.next()) {
                Band band = mapRowToBands(results);
                bandsURL.add(band);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }
        return bandsURL;
    }

    public Band getBandById(int id) {
        Band band = null;
        final String sql = "SELECT band_id, manager_id, bandname, description, cover_image_url\n" +
                "\tFROM bands WHERE band_id = ?;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, id);
            if(results.next()) {
                band = mapRowToBands(results);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }
        return band;
    }


    private Band mapRowToBands(SqlRowSet rs) {
        Band band = new Band();
        band.setId(rs.getInt("band_id"));
        band.setBandName(rs.getString("bandname"));
        band.setDescripton(rs.getString("description"));
        band.setMamagerid(rs.getInt("manager_id"));
        band.setCoverimageurl("cover_image_url");
        return band;
    }


}
