package com.techelevator.controller;

import com.techelevator.dao.NotificationDao;
import com.techelevator.dao.UserDao;
import com.techelevator.model.Band;
import com.techelevator.model.Follower;
import com.techelevator.model.Notification;
import com.techelevator.model.User;
import org.springframework.security.access.prepost.PreAuthorize;
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

    @PreAuthorize("isAuthenticated()")
    @GetMapping("/notifications")
    public List<Notification> getAllNotifications(Principal principal) {
        User user = this.userDao.getUserByUsername(principal.getName());
        return notificationDao.getNotificationsByUserId(user.getId());
    }

    @PreAuthorize("isAuthenticated()")
    @PostMapping("/notifications")
    public Notification createNewNotification(@RequestBody Notification notification) {
        System.out.println("Band Id: " + notification.getBandId());
        System.out.println("Date and Time: " + notification.getDateAndTime());
        System.out.println("Description: " + notification.getDescription());
        System.out.println("Subject: " + notification.getSubject());
        return notificationDao.createBandNotification(notification);
    }
}
