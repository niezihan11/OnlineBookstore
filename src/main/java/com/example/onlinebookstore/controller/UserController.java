package com.example.onlinebookstore.controller;

import com.example.onlinebookstore.model.Book;
import com.example.onlinebookstore.model.User;
import com.example.onlinebookstore.service.BookService;
import com.example.onlinebookstore.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/users")
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private BookService bookService;

    @PostMapping("/register")
    public User registerUser(@RequestBody User user) {
        return userService.saveUser(user);
    }

    @PostMapping("/login")
    public User loginUser(@RequestBody User user) {
        User existingUser = userService.findByUsername(user.getUsername());
        if (existingUser != null && existingUser.getPassword().equals(user.getPassword())) {
            return existingUser;
        } else {
            throw new RuntimeException("Invalid username or password");
        }
    }

    @PostMapping("/{userId}/cart")
    public User addToCart(@PathVariable Long userId, @RequestBody Map<String, Object> payload) {
        Long bookId = Long.valueOf((Integer) payload.get("id"));
        User user = userService.findById(userId);
        if (user != null) {
            Book book = bookService.findById(bookId);
            if (book != null) {
                user.getCart().add(book);
                return userService.saveUser(user);
            } else {
                throw new RuntimeException("Book not found");
            }
        } else {
            throw new RuntimeException("User not found");
        }
    }

    @GetMapping("/{userId}/cart")
    public List<Book> viewCart(@PathVariable Long userId) {
        User user = userService.findById(userId);
        if (user != null) {
            return user.getCart();
        } else {
            throw new RuntimeException("User not found");
        }
    }

    @DeleteMapping("/{userId}/cart")
    public User clearCart(@PathVariable Long userId) {
        User user = userService.findById(userId);
        if (user != null) {
            user.getCart().clear();
            return userService.saveUser(user);
        } else {
            throw new RuntimeException("User not found");
        }
    }

    @DeleteMapping("/{userId}/cart/{bookId}")
    public User removeFromCart(@PathVariable Long userId, @PathVariable Long bookId) {
        User user = userService.findById(userId);
        if (user != null) {
            user.getCart().removeIf(book -> book.getId().equals(bookId));
            return userService.saveUser(user);
        } else {
            throw new RuntimeException("User not found");
        }
    }

    @GetMapping("/{userId}")
    public  User getUser(@PathVariable Long userId) {
        return userService.findById(userId);
    }

    @PutMapping("/{userId}")
    public  User updateUser(@PathVariable Long userId, @RequestBody User user) {
        User existingUser = userService.findById(userId);
        if (existingUser != null) {
            existingUser.setAge(user.getAge());
            existingUser.setGender(user.getGender());
            existingUser.setBio(user.getBio());
            existingUser.setAvatarUrl(user.getAvatarUrl());
            return userService.saveUser(existingUser);
        } else {
            throw new RuntimeException("User not found");
        }
    }

    @PutMapping("/{userId}/password")
    public User upadtePassword(@PathVariable Long userId, @RequestBody Map<String, String> payload) {
        User existingUser = userService.findById(userId);
        if (existingUser != null) {
            String newPassword = payload.get("newPassword");
            existingUser.setPassword(newPassword);
            return userService.saveUser(existingUser);
        } else {
            throw new RuntimeException("User not found");
        }
    }

    @DeleteMapping("/{userId}")
    public void deleteUser(@PathVariable Long userId, @RequestBody Map<String, String> payload) {
        User existingUser = userService.findById(userId);
        if (existingUser != null) {
            String password = payload.get("password");
            if (existingUser.getPassword().equals(password)) {
                userService.deleteUser(userId);
            } else {
                throw new RuntimeException("Password is incorrect");
            }
        } else {
            throw new RuntimeException("User not found");
        }
    }
}

