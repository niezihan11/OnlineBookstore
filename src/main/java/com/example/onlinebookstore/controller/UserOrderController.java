package com.example.onlinebookstore.controller;

import com.example.onlinebookstore.model.Order;
import com.example.onlinebookstore.service.UserOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/users")
public class UserOrderController {

    @Autowired
    private UserOrderService userOrderService;

    @GetMapping("/{userId}/orders")
    public List<Order> getUserOrders(@PathVariable Long userId) {
        return userOrderService.getUserOrders(userId);
    }
}
