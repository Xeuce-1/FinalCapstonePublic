package com.techelevator.controller;

import com.techelevator.dao.NotificationDao;
import com.techelevator.dao.UserDao;
import com.techelevator.model.Notification;
import com.techelevator.model.User;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;

@RestController
@CrossOrigin
public class NotifcationController {

    final private NotificationDao notificationDao;
    final private UserDao userDao;

    public NotifcationController(NotificationDao notificationDao, UserDao userDao) {
        this.notificationDao = notificationDao;
        this.userDao = userDao;
    }

    @GetMapping("/notifications/{userId}")
    public List<Notification> getAllNotifications(@PathVariable int userId) {
        System.out.println(userId);

        return notificationDao.getNotificationsByUserId(userId);
    }
}
