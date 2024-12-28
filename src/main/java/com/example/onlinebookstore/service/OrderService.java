package com.example.onlinebookstore.service;

import com.example.onlinebookstore.model.Order;
import com.example.onlinebookstore.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderService {

    @Autowired
    private OrderRepository orderRepository;

    public Order saveOrder(Order order) {
        try {
            // 确保OrderItem实体是持久化状态
            order.getItems().forEach(item -> item.setOrder(order));
            return orderRepository.save(order);
        } catch (Exception e) {
            // 记录错误日志
            System.err.println("保存订单时出错: " + e.getMessage());
            throw e;
        }
    }

    public Order updatePaymentStatus(String orderNumber, boolean paymentStatus) {
        try {
            Order order = orderRepository.findByOrderNumber(orderNumber);
            if (order != null) {
                order.setPaymentStatus(paymentStatus);
                return orderRepository.save(order);
            }
            return null;
        } catch (Exception e) {
            // 记录错误日志
            System.err.println("更新支付状态时出错: " + e.getMessage());
            throw e;
        }
    }


    public List<Order> getAllOrders() {
        return orderRepository.findAll();
    }

    public Order getOrderById(Long id) {
        return orderRepository.findById(id).orElse(null);
    }

    public void updateOrderStatus(Long id, boolean paymentStatus) {
        Order order = orderRepository.findById(id).orElse(null);
        if (order != null) {
            order.setPaymentStatus(paymentStatus);
            orderRepository.save(order);
        }
    }

    public void deleteOrder(Long id) {
        orderRepository.deleteById(id);
    }
}
