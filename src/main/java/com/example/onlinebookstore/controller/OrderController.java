package com.example.onlinebookstore.controller;

import com.example.onlinebookstore.model.Order;
import com.example.onlinebookstore.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    @GetMapping("/ord")
    public String viewOrders(Model model) {
        List<Order> orders = orderService.getAllOrders();
        model.addAttribute("orders", orders);
        return "ord";
    }

    @GetMapping("/admin/orders/{id}")
    public String viewOrderDetails(@PathVariable Long id, Model model) {
        Order order = orderService.getOrderById(id);
        model.addAttribute("order", order);
        return "order-details";
    }

    @PostMapping("/admin/orders/update")
    public String updateOrderStatus(@RequestParam Long id, @RequestParam boolean paymentStatus) {
        orderService.updateOrderStatus(id, paymentStatus);
        return "redirect:/admin/orders";
    }

    @PostMapping("/admin/orders/delete")
    public String deleteOrder(@RequestParam Long id) {
        orderService.deleteOrder(id);
        return "redirect:/ord";
    }
}
