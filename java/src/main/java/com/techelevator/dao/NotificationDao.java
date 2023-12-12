package com.techelevator.dao;

import com.techelevator.model.Notification;

import java.time.LocalDate;
import java.util.List;

public interface NotificationDao {

    List<Notification> getAllNotifications();

    Notification getNotificationById(int id);

    List<Notification> getNotificationsByUserId(int id);

    Notification createBandNotification(Notification notification);

    void deleteBandNotification();
}
