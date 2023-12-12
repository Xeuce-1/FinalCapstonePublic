package com.techelevator.dao;

import com.techelevator.exception.DaoException;
import com.techelevator.model.Notification;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Component
public class JdbcNotificationDao implements NotificationDao {

    private final JdbcTemplate jdbcTemplate;

    public JdbcNotificationDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Notification> getAllNotifications() {
        List<Notification> notificationList = new ArrayList<>();

        String sql = "SELECT * FROM notifications";

        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
            while (results.next()) {
                notificationList.add(mapRowToNotification(results));
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }
        return notificationList;
    }

    @Override
    public Notification getNotificationById(int id) {
        Notification notification = null;
        String sql = "SELECT * FROM notifications WHERE notification_id = ?;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, id);
            while (results.next()) {
                notification = mapRowToNotification(results);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }
        return notification;
    }

    @Override
    public List<Notification> getNotificationsByUserId(int id) {
        List<Notification> notificationList = new ArrayList<>();
        String sql = "SELECT n.notification_id, n.subject, n.band_id, n.send_date, n.message\n" +
                "FROM notifications n\n" +
                "JOIN follower f ON f.band_id = n.band_id\n" +
                "WHERE f.user_id = ? ORDER BY n.send_date DESC;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, id);
            while (results.next()) {
                notificationList.add(mapRowToNotification(results));
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }
        return notificationList;
    }

    @Override
    public Notification createBandNotification(Notification notification) {
        Notification newNotification = null;
        String sql = "INSERT INTO notifications(subject, band_id, message, send_date)\n" +
                "VALUES (?, ?, ?, NOW())\n" +
                "RETURNING notification_id;";
        try {
            int newNotificationId = jdbcTemplate.queryForObject(sql, int.class, notification.getSubject(), notification.getBandId(), notification.getDescription());
            newNotification = getNotificationById(newNotificationId);
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        } catch (DataIntegrityViolationException e) {
            throw new DaoException("Data integrity violation", e);
        }
        return newNotification;
    }

    @Override
    public void deleteBandNotification() {
    }

    public Notification mapRowToNotification(SqlRowSet rowset) {
        Notification notification = new Notification();
        notification.setId(rowset.getInt("notification_id"));
        notification.setBandId(rowset.getInt("band_id"));
        notification.setSubject(rowset.getString("subject"));
        notification.setDescription(rowset.getString("message"));
        notification.setDateAndTime(rowset.getDate("send_date").toLocalDate());
        return notification;
    }
}
