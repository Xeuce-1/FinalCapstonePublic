package com.techelevator.controller;

import com.techelevator.dao.NotificationDao;
import com.techelevator.model.Notification;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin
public class NotifcationController {

    private NotificationDao notificationDao;

    public NotifcationController(NotificationDao notificationDao) {
        this.notificationDao = notificationDao;
    }

    @GetMapping("/notifications")
    public List<Notification> getAllNotifications() {
        return notificationDao.getAllNotifications();
    }
}
